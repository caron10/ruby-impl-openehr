# Autogenerated from a Treetop grammar. Edits may be lost.


require 'shared_token'
require 'dadl'
require 'cadl'

module ADLSyntax
  include Treetop::Runtime

  def root
    @root ||= :archetype
  end

  include SharedToken

  include DADL

  include CADL

  module Archetype0
    def arch_identification
      elements[0]
    end

    def arch_concept
      elements[2]
    end

    def arch_definition
      elements[5]
    end

    def arch_ontology
      elements[7]
    end
  end

  module Archetype1
    def archetype_id
      arch_identification.archetype_id
    end
  end

  def _nt_archetype
    start_index = index
    if node_cache[:archetype].has_key?(index)
      cached = node_cache[:archetype][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_arch_identification
    s0 << r1
    if r1
      r3 = _nt_arch_specialisation
      if r3
        r2 = r3
      else
        r2 = instantiate_node(SyntaxNode,input, index...index)
      end
      s0 << r2
      if r2
        r4 = _nt_arch_concept
        s0 << r4
        if r4
          r6 = _nt_arch_language
          if r6
            r5 = r6
          else
            r5 = instantiate_node(SyntaxNode,input, index...index)
          end
          s0 << r5
          if r5
            r8 = _nt_arch_description
            if r8
              r7 = r8
            else
              r7 = instantiate_node(SyntaxNode,input, index...index)
            end
            s0 << r7
            if r7
              r9 = _nt_arch_definition
              s0 << r9
              if r9
                r11 = _nt_arch_invariant
                if r11
                  r10 = r11
                else
                  r10 = instantiate_node(SyntaxNode,input, index...index)
                end
                s0 << r10
                if r10
                  r12 = _nt_arch_ontology
                  s0 << r12
                end
              end
            end
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Archetype0)
      r0.extend(Archetype1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:archetype][start_index] = r0

    r0
  end

  module ArchIdentification0
    def arch_head
      elements[0]
    end

    def V_ARCHETYPE_ID
      elements[1]
    end

    def space
      elements[2]
    end
  end

  module ArchIdentification1
    def archetype_id
      self.V_ARCHETYPE_ID.text_value
    end
  end

  def _nt_arch_identification
    start_index = index
    if node_cache[:arch_identification].has_key?(index)
      cached = node_cache[:arch_identification][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_arch_head
    s0 << r1
    if r1
      r2 = _nt_V_ARCHETYPE_ID
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchIdentification0)
      r0.extend(ArchIdentification1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_identification][start_index] = r0

    r0
  end

  module ArchHead0
    def SYM_ARCHETYPE
      elements[0]
    end

  end

  def _nt_arch_head
    start_index = index
    if node_cache[:arch_head].has_key?(index)
      cached = node_cache[:arch_head][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_ARCHETYPE
    s0 << r1
    if r1
      r3 = _nt_arch_meta_data
      if r3
        r2 = r3
      else
        r2 = instantiate_node(SyntaxNode,input, index...index)
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchHead0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_head][start_index] = r0

    r0
  end

  module ArchMetaData0
    def arch_meta_data_items
      elements[1]
    end

    def space
      elements[3]
    end
  end

  def _nt_arch_meta_data
    start_index = index
    if node_cache[:arch_meta_data].has_key?(index)
      cached = node_cache[:arch_meta_data][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('(', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('(')
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_arch_meta_data_items
      s0 << r2
      if r2
        if has_terminal?(')', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure(')')
          r3 = nil
        end
        s0 << r3
        if r3
          r4 = _nt_space
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchMetaData0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_meta_data][start_index] = r0

    r0
  end

  module ArchMetaDataItems0
    def arch_meta_data_item
      elements[1]
    end
  end

  module ArchMetaDataItems1
    def arch_meta_data_item
      elements[0]
    end

  end

  def _nt_arch_meta_data_items
    start_index = index
    if node_cache[:arch_meta_data_items].has_key?(index)
      cached = node_cache[:arch_meta_data_items][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_arch_meta_data_item
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        i3, s3 = index, []
        if has_terminal?(';', false, index)
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure(';')
          r4 = nil
        end
        s3 << r4
        if r4
          r5 = _nt_arch_meta_data_item
          s3 << r5
        end
        if s3.last
          r3 = instantiate_node(SyntaxNode,input, i3...index, s3)
          r3.extend(ArchMetaDataItems0)
        else
          @index = i3
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchMetaDataItems1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_meta_data_items][start_index] = r0

    r0
  end

  module ArchMetaDataItem0
    def SYM_ADL_VERSION
      elements[0]
    end

    def SYM_EQ
      elements[1]
    end

    def V_VERSION_STRING
      elements[2]
    end
  end

  def _nt_arch_meta_data_item
    start_index = index
    if node_cache[:arch_meta_data_item].has_key?(index)
      cached = node_cache[:arch_meta_data_item][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    r2 = _nt_SYM_ADL_VERSION
    s1 << r2
    if r2
      r3 = _nt_SYM_EQ
      s1 << r3
      if r3
        r4 = _nt_V_VERSION_STRING
        s1 << r4
      end
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(ArchMetaDataItem0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      r5 = _nt_SYM_IS_CONTROLLED
      if r5
        r0 = r5
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:arch_meta_data_item][start_index] = r0

    r0
  end

  module ArchSpecialisation0
    def SYM_SPECIALIZE
      elements[0]
    end

    def V_ARCHETYPE_ID
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_specialisation
    start_index = index
    if node_cache[:arch_specialisation].has_key?(index)
      cached = node_cache[:arch_specialisation][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_SPECIALIZE
    s0 << r1
    if r1
      r2 = _nt_V_ARCHETYPE_ID
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchSpecialisation0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_specialisation][start_index] = r0

    r0
  end

  module ArchConcept0
    def SYM_CONCEPT
      elements[0]
    end

    def V_LOCAL_TERM_CODE_REF
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_concept
    start_index = index
    if node_cache[:arch_concept].has_key?(index)
      cached = node_cache[:arch_concept][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_CONCEPT
    s0 << r1
    if r1
      r2 = _nt_V_LOCAL_TERM_CODE_REF
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchConcept0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_concept][start_index] = r0

    r0
  end

  module ArchLanguage0
    def SYM_LANGUAGE
      elements[0]
    end

    def V_DADL_TEXT
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_language
    start_index = index
    if node_cache[:arch_language].has_key?(index)
      cached = node_cache[:arch_language][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_LANGUAGE
    s0 << r1
    if r1
      r2 = _nt_V_DADL_TEXT
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchLanguage0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_language][start_index] = r0

    r0
  end

  module ArchDescription0
    def SYM_DESCRIPTION
      elements[0]
    end

    def V_DADL_TEXT
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_description
    start_index = index
    if node_cache[:arch_description].has_key?(index)
      cached = node_cache[:arch_description][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_DESCRIPTION
    s0 << r1
    if r1
      r2 = _nt_V_DADL_TEXT
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchDescription0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_description][start_index] = r0

    r0
  end

  module ArchDefinition0
    def SYM_DEFINITION
      elements[0]
    end

    def V_CADL_TEXT
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_definition
    start_index = index
    if node_cache[:arch_definition].has_key?(index)
      cached = node_cache[:arch_definition][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_DEFINITION
    s0 << r1
    if r1
      r2 = _nt_V_CADL_TEXT
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchDefinition0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_definition][start_index] = r0

    r0
  end

  module ArchInvariant0
    def SYM_INVARIANT
      elements[0]
    end

    def V_ASSERTION_TEXT
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_invariant
    start_index = index
    if node_cache[:arch_invariant].has_key?(index)
      cached = node_cache[:arch_invariant][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_INVARIANT
    s0 << r1
    if r1
      r2 = _nt_V_ASSERTION_TEXT
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchInvariant0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_invariant][start_index] = r0

    r0
  end

  module ArchOntology0
    def SYM_ONTOLOGY
      elements[0]
    end

    def V_DADL_TEXT
      elements[1]
    end

    def space
      elements[2]
    end
  end

  def _nt_arch_ontology
    start_index = index
    if node_cache[:arch_ontology].has_key?(index)
      cached = node_cache[:arch_ontology][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_SYM_ONTOLOGY
    s0 << r1
    if r1
      r2 = _nt_V_DADL_TEXT
      s0 << r2
      if r2
        r3 = _nt_space
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ArchOntology0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:arch_ontology][start_index] = r0

    r0
  end

end

class ADLSyntaxParser < Treetop::Runtime::CompiledParser
  include ADLSyntax
end

