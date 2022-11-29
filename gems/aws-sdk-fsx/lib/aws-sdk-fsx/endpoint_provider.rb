# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FSx
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOnRydWUsImRvY3VtZW50
YXRpb24iOiJUaGUgQVdTIHJlZ2lvbiB1c2VkIHRvIGRpc3BhdGNoIHRoZSBy
ZXF1ZXN0LiIsInR5cGUiOiJTdHJpbmcifSwiVXNlRHVhbFN0YWNrIjp7ImJ1
aWx0SW4iOiJBV1M6OlVzZUR1YWxTdGFjayIsInJlcXVpcmVkIjp0cnVlLCJk
ZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRhdGlvbiI6IldoZW4gdHJ1ZSwgdXNl
IHRoZSBkdWFsLXN0YWNrIGVuZHBvaW50LiBJZiB0aGUgY29uZmlndXJlZCBl
bmRwb2ludCBkb2VzIG5vdCBzdXBwb3J0IGR1YWwtc3RhY2ssIGRpc3BhdGNo
aW5nIHRoZSByZXF1ZXN0IE1BWSByZXR1cm4gYW4gZXJyb3IuIiwidHlwZSI6
IkJvb2xlYW4ifSwiVXNlRklQUyI6eyJidWlsdEluIjoiQVdTOjpVc2VGSVBT
IiwicmVxdWlyZWQiOnRydWUsImRlZmF1bHQiOmZhbHNlLCJkb2N1bWVudGF0
aW9uIjoiV2hlbiB0cnVlLCBzZW5kIHRoaXMgcmVxdWVzdCB0byB0aGUgRklQ
Uy1jb21wbGlhbnQgcmVnaW9uYWwgZW5kcG9pbnQuIElmIHRoZSBjb25maWd1
cmVkIGVuZHBvaW50IGRvZXMgbm90IGhhdmUgYSBGSVBTIGNvbXBsaWFudCBl
bmRwb2ludCwgZGlzcGF0Y2hpbmcgdGhlIHJlcXVlc3Qgd2lsbCByZXR1cm4g
YW4gZXJyb3IuIiwidHlwZSI6IkJvb2xlYW4ifSwiRW5kcG9pbnQiOnsiYnVp
bHRJbiI6IlNESzo6RW5kcG9pbnQiLCJyZXF1aXJlZCI6ZmFsc2UsImRvY3Vt
ZW50YXRpb24iOiJPdmVycmlkZSB0aGUgZW5kcG9pbnQgdXNlZCB0byBzZW5k
IHRoaXMgcmVxdWVzdCIsInR5cGUiOiJTdHJpbmcifX0sInJ1bGVzIjpbeyJj
b25kaXRpb25zIjpbeyJmbiI6ImF3cy5wYXJ0aXRpb24iLCJhcmd2IjpbeyJy
ZWYiOiJSZWdpb24ifV0sImFzc2lnbiI6IlBhcnRpdGlvblJlc3VsdCJ9XSwi
dHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4iOiJp
c1NldCIsImFyZ3YiOlt7InJlZiI6IkVuZHBvaW50In1dfSx7ImZuIjoicGFy
c2VVUkwiLCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XSwiYXNzaWduIjoi
dXJsIn1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpb
eyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBT
In0sdHJ1ZV19XSwiZXJyb3IiOiJJbnZhbGlkIENvbmZpZ3VyYXRpb246IEZJ
UFMgYW5kIGN1c3RvbSBlbmRwb2ludCBhcmUgbm90IHN1cHBvcnRlZCIsInR5
cGUiOiJlcnJvciJ9LHsiY29uZGl0aW9ucyI6W10sInR5cGUiOiJ0cmVlIiwi
cnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVhbkVxdWFscyIs
ImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9LHRydWVdfV0sImVycm9y
IjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBEdWFsc3RhY2sgYW5kIGN1c3Rv
bSBlbmRwb2ludCBhcmUgbm90IHN1cHBvcnRlZCIsInR5cGUiOiJlcnJvciJ9
LHsiY29uZGl0aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6eyJyZWYiOiJF
bmRwb2ludCJ9LCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBl
IjoiZW5kcG9pbnQifV19XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xl
YW5FcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VGSVBTIn0sdHJ1ZV19LHsi
Zm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRHVhbFN0
YWNrIn0sdHJ1ZV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W3siZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3RydWUseyJm
biI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQi
fSwic3VwcG9ydHNGSVBTIl19XX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJh
cmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIsImFyZ3YiOlt7InJlZiI6IlBh
cnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1YWxTdGFjayJdfV19XSwidHlw
ZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W10sImVuZHBvaW50
Ijp7InVybCI6Imh0dHBzOi8vZnN4LWZpcHMue1JlZ2lvbn0ue1BhcnRpdGlv
blJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9IiwicHJvcGVydGllcyI6e30s
ImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlv
bnMiOltdLCJlcnJvciI6IkZJUFMgYW5kIER1YWxTdGFjayBhcmUgZW5hYmxl
ZCwgYnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgb25lIG9y
IGJvdGgiLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W3siZm4i
OiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRy
dWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7
ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRB
dHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBv
cnRzRklQUyJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W10sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
Olt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9u
In0sInByb2QtY2EtY2VudHJhbC0xIl19XSwiZW5kcG9pbnQiOnsidXJsIjoi
aHR0cHM6Ly9mc3gtZmlwcy5jYS1jZW50cmFsLTEuYW1hem9uYXdzLmNvbSIs
InByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2lu
dCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2
IjpbeyJyZWYiOiJSZWdpb24ifSwicHJvZC11cy1lYXN0LTEiXX1dLCJlbmRw
b2ludCI6eyJ1cmwiOiJodHRwczovL2ZzeC1maXBzLnVzLWVhc3QtMS5hbWF6
b25hd3MuY29tIiwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0Vx
dWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJwcm9kLXVzLWVhc3Qt
MiJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vZnN4LWZpcHMudXMt
ZWFzdC0yLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7fSwiaGVhZGVy
cyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOlt7ImZu
Ijoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sInBy
b2QtdXMtd2VzdC0xIl19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9m
c3gtZmlwcy51cy13ZXN0LTEuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMi
Ont9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0
aW9ucyI6W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJS
ZWdpb24ifSwicHJvZC11cy13ZXN0LTIiXX1dLCJlbmRwb2ludCI6eyJ1cmwi
OiJodHRwczovL2ZzeC1maXBzLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tIiwi
cHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFscyIsImFyZ3Yi
Olt7InJlZiI6IlJlZ2lvbiJ9LCJwcm9kLXVzLWdvdi1lYXN0LTEiXX1dLCJl
bmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2ZzeC1maXBzLnVzLWdvdi1lYXN0
LTEuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7
fX0sInR5cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJz
dHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwicHJvZC11
cy1nb3Ytd2VzdC0xIl19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9m
c3gtZmlwcy51cy1nb3Ytd2VzdC0xLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0
aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNv
bmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL2ZzeC1m
aXBzLntSZWdpb259LntQYXJ0aXRpb25SZXN1bHQjZG5zU3VmZml4fSIsInBy
b3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9
XX1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkZJUFMgaXMgZW5hYmxl
ZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBGSVBTIiwi
dHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9vbGVh
bkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9LHRydWVd
fV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZu
IjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJnZXRBdHRy
IiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1cHBvcnRz
RHVhbFN0YWNrIl19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25k
aXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9mc3gue1Jl
Z2lvbn0ue1BhcnRpdGlvblJlc3VsdCNkdWFsU3RhY2tEbnNTdWZmaXh9Iiwi
cHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In1dfSx7ImNvbmRpdGlvbnMiOltdLCJlcnJvciI6IkR1YWxTdGFjayBpcyBl
bmFibGVkIGJ1dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IER1
YWxTdGFjayIsInR5cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbXSwi
ZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9mc3gue1JlZ2lvbn0ue1BhcnRp
dGlvblJlc3VsdCNkbnNTdWZmaXh9IiwicHJvcGVydGllcyI6e30sImhlYWRl
cnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In1dfV19

    JSON
  end
end
