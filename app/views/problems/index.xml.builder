xml.instruct! :xml, :version => "1.0"
xml.problems do |xml_problems|
  @problems.each do |problem|
    problem_number = problem.try(:number) || problem.id
    xml_problems.problem :id => problem_number do |xml_problem|
      xml_problem.moves do |xml_moves|
        problem.moves.each do |move|
          xml_moves.move do |xml_move|
            if move.white_from || move.white_to
              xml_move.white do |xml_white|
                xml_white.from(move.white_from)
                xml_white.to(move.white_to)
                xml_white.destroys(move.white_destroys)
              end
            end
            
            if move.black_from || move.black_to
              xml_move.black do |xml_black|
                xml_black.from(move.black_from)
                xml_black.to(move.black_to)
                xml_black.destroys(move.black_destroys)
              end
            end
          end
        end
      end
      xml_problem.board do |xml_board|
        xml_board.white(problem.white)
        xml_board.black(problem.black)
      end
    end
  end
end