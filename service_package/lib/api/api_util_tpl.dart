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
          {{#isMap}}
            {{{paramsType}}} params = Map.from({{{paramsValue}}})
            ..removeWhere((key, value) => value == null);
          {{/isMap}}
          {{^isMap}}
            dynamic params = {{paramsValue}};
          {{/isMap}}
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
            {{#hasData}}data: data,{{/hasData}}
            {{#hasApi}}isApi: false,{{/hasApi}}
            );
        for (var item in jsonLists) {
          list.add({{className}}.fromJson(item));
        }
        return list;
        {{/isList}}
        {{^isList}}
        {{#hasClassName}}
        {{className}}? item;
        Map<String, dynamic> res =
          await {{{dio}}}.getInstance().{{requestName}}(
            url: "{{{url}}}", 
            {{#hasParams}}params: params,{{/hasParams}}
            {{#hasData}}data: data,{{/hasData}}
            {{#hasApi}}isApi: false,{{/hasApi}}
          );   
        item = {{className}}.fromJson(res);
        return item;
        {{/hasClassName}}
        {{^hasClassName}}
          dynamic res =
          await {{{dio}}}.getInstance().{{requestName}}(
            url: "{{{url}}}", 
            {{#hasParams}}params: params,{{/hasParams}}
            {{#hasData}}data: data,{{/hasData}}
            {{#hasApi}}isApi: false,{{/hasApi}}
          );   
        return res;
        {{/hasClassName}}
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
