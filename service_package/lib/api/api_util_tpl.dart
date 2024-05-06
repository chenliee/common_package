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
        
        List<{{className}}> list = [];
        List<dynamic> jsonLists =
          await {{{dio}}}.getInstance().{{requestName}}(
            url: "{{{url}}}", 
            params: params, 
            {{#hasData}}data: data,{{/hasData}});
        for (var item in jsonLists) {
          list.add({{className}}.fromJson(item));
        }
        return list;
      } catch (e) {
        Debug.printMsg(e, StackTrace.current);
        rethrow;
      }
    } 
    {{/functions}}
}

""";
}
