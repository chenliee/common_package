class ApiUtilTpl {
  static const String tpl = """
{{#imports}}
import '{{{path}}}';
{{/imports}}

class {{fileName}} {
    {{#functions}}
    static {{{functionDefine}}} async{
      try {
        {{#hasParams}}
        {{{paramsType}}} params = Map.from({{{paramsValue}}})
        ..removeWhere((key, value) => value == null);
        {{/hasParams}}
        
        {{#hasData}}
        {{{dataType}}} data = Map.from({{{dataValue}}})
        ..removeWhere((key, value) => value == null);
        {{/hasData}}
        
        {{#isList}}
        List<{{className}}> list = [];
        List<dynamic> jsonLists =
          await {{{dio}}}.getInstance().{{requestName}}(
            url: "{{{url}}}",
            {{#hasParams}}params: params,{{/hasParams}}
            {{#hasData}}data: data,{{/hasData}},
            {{#hasApi}}isApi: false,{{/hasApi}},
            );
        for (var item in jsonLists) {
          list.add({{className}}.fromJson(item));
        }
        return list;
        {{/isList}}
        {{^isList}}
        {{className}}? item;
        Map<String, dynamic> res =
          await {{{dio}}}.getInstance().{{requestName}}(
            url: "{{{url}}}", 
            {{#hasParams}}params: params,{{/hasParams}}
            {{#hasData}}data: data,{{/hasData}});
        item = {{className}}.fromJson(res);
        return item;
        {{/isList}}
      } catch (e) {
        Debug.printMsg(e, StackTrace.current);
        rethrow;
      }
    } 
    {{/functions}}
}
""";
}
