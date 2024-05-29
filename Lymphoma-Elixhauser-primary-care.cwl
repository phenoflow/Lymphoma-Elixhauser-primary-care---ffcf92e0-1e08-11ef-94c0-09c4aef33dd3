cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  mlymphocytic-lymphoma-elixhauser-primary-care---primary:
    run: mlymphocytic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  lymphoma-elixhauser-primary-care-mmalig---primary:
    run: lymphoma-elixhauser-primary-care-mmalig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: mlymphocytic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-nkcell---primary:
    run: lymphoma-elixhauser-primary-care-nkcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-mmalig---primary/output
  leukaemic-lymphoma-elixhauser-primary-care---primary:
    run: leukaemic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-nkcell---primary/output
  lymphoma-elixhauser-primary-care---primary:
    run: lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: leukaemic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-reticulosis---primary:
    run: lymphoma-elixhauser-primary-care-reticulosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care---primary/output
  centroblasticcentrocytic-lymphoma-elixhauser-primary-care---primary:
    run: centroblasticcentrocytic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-reticulosis---primary/output
  lymphoma-elixhauser-primary-care-specified---primary:
    run: lymphoma-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: centroblasticcentrocytic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-predominance---primary:
    run: lymphoma-elixhauser-primary-care-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-specified---primary/output
  nonfollicular-lymphoma-elixhauser-primary-care---primary:
    run: nonfollicular-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-predominance---primary/output
  lymphoma-elixhauser-primary-care-stage---primary:
    run: lymphoma-elixhauser-primary-care-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: nonfollicular-lymphoma-elixhauser-primary-care---primary/output
  nodular-lymphoma-elixhauser-primary-care---primary:
    run: nodular-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-stage---primary/output
  lymphoma-elixhauser-primary-care-myelomatosis---primary:
    run: lymphoma-elixhauser-primary-care-myelomatosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: nodular-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-tissue---primary:
    run: lymphoma-elixhauser-primary-care-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-myelomatosis---primary/output
  lymphoma-elixhauser-primary-care-bcell---primary:
    run: lymphoma-elixhauser-primary-care-bcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-tissue---primary/output
  lymphoma-elixhauser-primary-care-burkitt---primary:
    run: lymphoma-elixhauser-primary-care-burkitt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-bcell---primary/output
  lymphoma-elixhauser-primary-care-reticuloendotheliosis---primary:
    run: lymphoma-elixhauser-primary-care-reticuloendotheliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-burkitt---primary/output
  lymphoma-elixhauser-primary-care-mmycosis---primary:
    run: lymphoma-elixhauser-primary-care-mmycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-reticuloendotheliosis---primary/output
  classical-lymphoma-elixhauser-primary-care---primary:
    run: classical-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-mmycosis---primary/output
  lymphoma-elixhauser-primary-care-letterersiwe---primary:
    run: lymphoma-elixhauser-primary-care-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: classical-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-follicle---primary:
    run: lymphoma-elixhauser-primary-care-follicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-letterersiwe---primary/output
  lymphoma-elixhauser-primary-care-malig---primary:
    run: lymphoma-elixhauser-primary-care-malig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-follicle---primary/output
  lymphoma-elixhauser-primary-care-mreticulosarcoma---primary:
    run: lymphoma-elixhauser-primary-care-mreticulosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-malig---primary/output
  lymphocytichistiocytic-lymphoma-elixhauser-primary-care---primary:
    run: lymphocytichistiocytic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-mreticulosarcoma---primary/output
  lymphoma-elixhauser-primary-care-benign---primary:
    run: lymphoma-elixhauser-primary-care-benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: lymphocytichistiocytic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-nonhodgkin---primary:
    run: lymphoma-elixhauser-primary-care-nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-benign---primary/output
  lymphoma-elixhauser-primary-care-waldenstrom---primary:
    run: lymphoma-elixhauser-primary-care-waldenstrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-nonhodgkin---primary/output
  lymphoma-elixhauser-primary-care-mhodgkin---primary:
    run: lymphoma-elixhauser-primary-care-mhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-waldenstrom---primary/output
  lymphoma-elixhauser-primary-care-cellularity---primary:
    run: lymphoma-elixhauser-primary-care-cellularity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-mhodgkin---primary/output
  lymphoma-elixhauser-primary-care-spleen---primary:
    run: lymphoma-elixhauser-primary-care-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-cellularity---primary/output
  lymphoma-elixhauser-primary-care-tcell---primary:
    run: lymphoma-elixhauser-primary-care-tcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-spleen---primary/output
  lymphoma-elixhauser-primary-care-paragranuloma---primary:
    run: lymphoma-elixhauser-primary-care-paragranuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-tcell---primary/output
  lymphoma-elixhauser-primary-care-tumour---primary:
    run: lymphoma-elixhauser-primary-care-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-paragranuloma---primary/output
  lymphoma-elixhauser-primary-care-mplasmacytoma---primary:
    run: lymphoma-elixhauser-primary-care-mplasmacytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-tumour---primary/output
  lymphoma-elixhauser-primary-care-macroglobulinaemia---primary:
    run: lymphoma-elixhauser-primary-care-macroglobulinaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-mplasmacytoma---primary/output
  lymphoma-elixhauser-primary-care-sarcoma---primary:
    run: lymphoma-elixhauser-primary-care-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-macroglobulinaemia---primary/output
  anaplastic-lymphoma-elixhauser-primary-care---primary:
    run: anaplastic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-sarcoma---primary/output
  cutaneous-lymphoma-elixhauser-primary-care---primary:
    run: cutaneous-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: anaplastic-lymphoma-elixhauser-primary-care---primary/output
  intrapelvic-lymphoma-elixhauser-primary-care---primary:
    run: intrapelvic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cutaneous-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-diffuse---primary:
    run: lymphoma-elixhauser-primary-care-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: intrapelvic-lymphoma-elixhauser-primary-care---primary/output
  immunoblastic-lymphoma-elixhauser-primary-care---primary:
    run: immunoblastic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-diffuse---primary/output
  mlymphoblastic-lymphoma-elixhauser-primary-care---primary:
    run: mlymphoblastic-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: immunoblastic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-[m]adenolymphoma---primary:
    run: lymphoma-elixhauser-primary-care-[m]adenolymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: mlymphoblastic-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-undifferentiated---primary:
    run: lymphoma-elixhauser-primary-care-undifferentiated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-[m]adenolymphoma---primary/output
  lymphoma-elixhauser-primary-care-depletion---primary:
    run: lymphoma-elixhauser-primary-care-depletion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-undifferentiated---primary/output
  lymphoma-elixhauser-primary-care-sezary---primary:
    run: lymphoma-elixhauser-primary-care-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-depletion---primary/output
  other-lymphoma-elixhauser-primary-care---primary:
    run: other-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-sezary---primary/output
  peripheral-lymphoma-elixhauser-primary-care---primary:
    run: peripheral-lymphoma-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: other-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-kahler's---primary:
    run: lymphoma-elixhauser-primary-care-kahler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: peripheral-lymphoma-elixhauser-primary-care---primary/output
  lymphoma-elixhauser-primary-care-histiocytosis---primary:
    run: lymphoma-elixhauser-primary-care-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-kahler's---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: lymphoma-elixhauser-primary-care-histiocytosis---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
