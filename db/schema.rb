# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 50161230223318) do

  create_table "TABLE 2", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "Part No."
    t.string  "Time",                                    limit: 19
    t.string  "Nest",                                    limit: 10
    t.string  "Result",                                  limit: 8
    t.string  "Result pits/void",                        limit: 1
    t.string  "Result pos. material",                    limit: 1
    t.string  "Result burr top",                         limit: 1
    t.string  "Result burr bottom",                      limit: 1
    t.string  "Result burr top airside",                 limit: 1
    t.string  "Result burr bottom airside",              limit: 1
    t.string  "Result base crack",                       limit: 1
    t.string  "Result rib chip",                         limit: 1
    t.string  "Result frame chip",                       limit: 1
    t.string  "Result crack",                            limit: 1
    t.string  "Result stain",                            limit: 1
    t.string  "Result pits/void edge",                   limit: 1
    t.string  "Result chipping edge",                    limit: 1
    t.string  "Result curvature top",                    limit: 1
    t.string  "Result curvature bottom",                 limit: 1
    t.string  "Plenum depth result total",               limit: 1
    t.string  "Plenum depth result area 1",              limit: 1
    t.string  "Plenum depth result area 2",              limit: 1
    t.string  "IC 90° rotated",                          limit: 1
    t.string  "IC 180° rotated",                         limit: 1
    t.string  "IC length ok",                            limit: 1
    t.string  "IC width ok",                             limit: 1
    t.string  "IC hole pos ok",                          limit: 1
    t.string  "IC symmetry ok",                          limit: 1
    t.string  "Inspection valid",                        limit: 1
    t.integer "Inspection error evaluation"
    t.integer "Inspection error timing"
    t.integer "Inspection error img aquisition"
    t.string  "Inspection error belt stop",              limit: 1
    t.integer "Number of pits/voids"
    t.integer "Number of pos. material"
    t.decimal "Burr max. height [µm]",                              precision: 6, scale: 3
    t.decimal "Burr min. height top [µm]",                          precision: 4, scale: 3
    t.decimal "Burr max. height top [µm]",                          precision: 6, scale: 3
    t.decimal "Burr min. width top [mm]",                           precision: 4, scale: 3
    t.decimal "Burr max. width top [mm]",                           precision: 4, scale: 3
    t.decimal "Burr avg. width top [mm]",                           precision: 4, scale: 3
    t.decimal "Burr min. height bottom [µm]",                       precision: 4, scale: 3
    t.decimal "Burr max. height bottom [µm]",                       precision: 6, scale: 3
    t.decimal "Burr min. width bottom [mm]",                        precision: 4, scale: 3
    t.decimal "Burr max. width bottom [mm]",                        precision: 4, scale: 3
    t.decimal "Burr avg. width bottom [mm]",                        precision: 4, scale: 3
    t.decimal "Burr max. height airside [µm]",                      precision: 5, scale: 3
    t.decimal "Burr min. height top airside [µm]",                  precision: 4, scale: 3
    t.decimal "Burr max. height top airside [µm]",                  precision: 5, scale: 3
    t.decimal "Burr min. width top airside [mm]",                   precision: 4, scale: 3
    t.decimal "Burr max. width top airside [mm]",                   precision: 4, scale: 3
    t.decimal "Burr avg. width top airside [mm]",                   precision: 4, scale: 3
    t.decimal "Burr min. height bottom airside [µm]",               precision: 4, scale: 3
    t.decimal "Burr max. height bottom airside [µm]",               precision: 5, scale: 3
    t.decimal "Burr min. width bottom airside [mm]",                precision: 4, scale: 3
    t.decimal "Burr max. width bottom airside [mm]",                precision: 4, scale: 3
    t.decimal "Burr avg. width bottom airside [mm]",                precision: 4, scale: 3
    t.integer "Number of base cracks"
    t.integer "Number of rib chips"
    t.decimal "rib chip length [mm]",                               precision: 4, scale: 3
    t.integer "Number of frame chips"
    t.decimal "frame chip area [mmІ]",                              precision: 4, scale: 3
    t.integer "Number of cracks"
    t.decimal "Crack 1 length [mm]",                                precision: 4, scale: 3
    t.decimal "Crack 1 width [mm]",                                 precision: 4, scale: 3
    t.integer "Number of stains"
    t.decimal "stain area [mmІ]",                                   precision: 4, scale: 3
    t.integer "Number of edge voids"
    t.integer "Number of edge chippings"
    t.decimal "edge chipping length [mm]",                          precision: 4, scale: 3
    t.decimal "edge chipping width [mm]",                           precision: 4, scale: 3
    t.decimal "top curvature meas. point 1 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 2 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 3 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 4 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 5 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 6 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 7 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 8 [µm]",                   precision: 6, scale: 3
    t.decimal "top curvature meas. point 9 [µm]",                   precision: 4, scale: 3
    t.decimal "value curvature top [µm]",                           precision: 6, scale: 3
    t.decimal "top curvature shape [µm]",                           precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 1 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 2 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 3 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 4 [µm]",                precision: 5, scale: 3
    t.decimal "bottom curvature meas. point 5 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 6 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 7 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 8 [µm]",                precision: 6, scale: 3
    t.decimal "bottom curvature meas. point 9 [µm]",                precision: 4, scale: 3
    t.decimal "value curvature bottom [µm]",                        precision: 6, scale: 3
    t.decimal "bottom curvature shape [µm]",                        precision: 6, scale: 3
    t.decimal "thickness meas. point 1 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 2 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 3 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 4 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 5 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 6 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 7 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 8 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 9 [mm]",                       precision: 7, scale: 3
    t.decimal "thickness meas. point 10 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 11 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 12 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 13 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 14 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 15 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 16 [mm]",                      precision: 7, scale: 3
    t.decimal "thickness meas. point 17 [mm]",                      precision: 7, scale: 3
    t.integer "thickness average 17 pts. [µm]"
    t.integer "thickness variation 17 pts. [µm]"
    t.integer "thickness flow field average [µm]"
    t.integer "thickness flow field variation [µm]"
    t.integer "thickness perimeter average [µm]"
    t.integer "thickness perimeter variation [µm]"
    t.integer "thickness perimeter flow field [µm]"
    t.string  "A2 range top exceeded",                   limit: 1
    t.decimal "AІ average weighted top [mm^4]",                     precision: 4, scale: 3
    t.decimal "AІ top deviation last 10 ICs [mm^4]",                precision: 4, scale: 3
    t.decimal "top AІ meas. point 1 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 2 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 3 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 4 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 5 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 6 [mm^4]",                        precision: 4, scale: 3
    t.decimal "top AІ meas. point 7 [mm^4]",                        precision: 5, scale: 3
    t.decimal "top AІ meas. point 8 [mm^4]",                        precision: 5, scale: 3
    t.decimal "top AІ meas. point 9 [mm^4]",                        precision: 5, scale: 3
    t.decimal "top AІ meas. point 10 [mm^4]",                       precision: 5, scale: 3
    t.string  "A2 range bottom exceeded",                limit: 1
    t.decimal "AІ average weighted bottom [mm^4]",                  precision: 4, scale: 3
    t.decimal "AІ bottom deviation last 10 ICs [mm^4]",             precision: 5, scale: 3
    t.decimal "bottom AІ meas. point 1 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 2 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 3 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 4 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 5 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 6 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 7 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 8 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 9 [mm^4]",                     precision: 4, scale: 3
    t.decimal "bottom AІ meas. point 10 [mm^4]",                    precision: 4, scale: 3
    t.decimal "AІ bottom R1 average [mm^4]",                        precision: 4, scale: 3
    t.decimal "AІ bottom R3/R1 []",                                 precision: 4, scale: 3
    t.decimal "AІ bottom R2/R1 []",                                 precision: 4, scale: 3
    t.decimal "AІ bottom R3/R2 []",                                 precision: 4, scale: 3
    t.decimal "AІ bottom R2 average [mm^4]",                        precision: 4, scale: 3
    t.decimal "AІ bottom R3 average [mm^4]",                        precision: 4, scale: 3
    t.decimal "AІ average cathode relief [mm^4]",                   precision: 4, scale: 3
    t.decimal "cathode relief AІ meas. point 1 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 2 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 3 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 4 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 5 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 6 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 7 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 8 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 9 [mm^4]",             precision: 5, scale: 3
    t.decimal "cathode relief AІ meas. point 10 [mm^4]",            precision: 5, scale: 3
    t.decimal "Plenum depth area 1 average [µm]",                   precision: 6, scale: 3
    t.decimal "Plenum depth area 1 min [µm]",                       precision: 6, scale: 3
    t.decimal "Plenum depth area 1 max [µm]",                       precision: 6, scale: 3
    t.decimal "Plenum depth area 2 average [µm]",                   precision: 4, scale: 3
    t.decimal "Plenum depth area 2 min [µm]",                       precision: 4, scale: 3
    t.decimal "Plenum depth area 2 max [µm]",                       precision: 4, scale: 3
    t.decimal "IC length [mm]",                                     precision: 6, scale: 3
    t.decimal "IC width [mm]",                                      precision: 6, scale: 3
    t.decimal "hole top diameter [mm]",                             precision: 4, scale: 3
    t.decimal "hole top pos x [mm]",                                precision: 5, scale: 3
    t.decimal "hole top pos y [mm]",                                precision: 4, scale: 3
    t.decimal "hole bottom diameter [mm]",                          precision: 4, scale: 3
    t.decimal "hole bottom pos x [mm]",                             precision: 5, scale: 3
    t.decimal "hole bottom pos y [mm]",                             precision: 4, scale: 3
    t.decimal "IC hole true distance []",                           precision: 4, scale: 3
    t.decimal "IC symmetry x [mm]",                                 precision: 4, scale: 3
    t.decimal "IC symmetry y [mm]",                                 precision: 4, scale: 3
    t.integer "Powder lot no"
    t.integer "Batch no"
    t.integer "Cage no"
    t.string  "Recipe",                                  limit: 26
    t.decimal "Plenum edge combined stddev Fuel [mm]",              precision: 4, scale: 3
    t.decimal "Strip seal combined stddev Air [mm]",                precision: 4, scale: 3
    t.decimal "Strip seal combined stddev Fuel [mm]",               precision: 4, scale: 3
    t.decimal "D-flat combined stddev Air [mm]",                    precision: 4, scale: 3
    t.decimal "Flow field stddev Air [mm]",                         precision: 4, scale: 3
    t.decimal "Flow field stddev Fuel [mm]",                        precision: 4, scale: 3
    t.decimal "Rib end combined stddev Air [mm]",                   precision: 4, scale: 3
    t.decimal "Rib end combined stddev Fuel [mm]",                  precision: 4, scale: 3
    t.decimal "Perimeter delta Fuel [mm]",                          precision: 5, scale: 3
    t.decimal "Plenum edge combined offset Fuel [mm]",              precision: 5, scale: 3
    t.decimal "Strip seal combined offset Fuel [mm]",               precision: 4, scale: 3
    t.decimal "Strip seal combined offset Air [mm]",                precision: 4, scale: 3
    t.decimal "D-flat combined Offset Air [mm]",                    precision: 4, scale: 3
    t.integer "CCC Red count Air"
    t.integer "CCC Red count Fuel"
    t.integer "CCC Blue count Air"
    t.integer "CCC Blue count Fuel"
    t.decimal "Global curv X Fuel",                                 precision: 5, scale: 3
    t.decimal "Global curv Y Fuel",                                 precision: 4, scale: 3
    t.decimal "Global curv X Air",                                  precision: 5, scale: 3
    t.decimal "Global curv Y Air",                                  precision: 4, scale: 3
    t.string  "CTQ valid",                               limit: 1
    t.decimal "Rotation3D-1[°]",                                    precision: 5, scale: 3
    t.decimal "Rotation3D-2[°]",                                    precision: 5, scale: 3
    t.decimal "RotationGeo[°]",                                     precision: 5, scale: 3
  end

  create_table "TABLE 3", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "Part No."
    t.string  "Time",                                    limit: 19
    t.string  "Nest",                                    limit: 10
    t.string  "Result",                                  limit: 14
    t.string  "Result pits/void",                        limit: 1
    t.string  "Result pos. material",                    limit: 1
    t.string  "Result burr top",                         limit: 1
    t.string  "Result burr bottom",                      limit: 1
    t.string  "Result burr top airside",                 limit: 1
    t.string  "Result burr bottom airside",              limit: 1
    t.string  "Result base crack",                       limit: 1
    t.string  "Result rib chip",                         limit: 1
    t.string  "Result frame chip",                       limit: 1
    t.string  "Result crack",                            limit: 1
    t.string  "Result stain",                            limit: 1
    t.string  "Result pits/void edge",                   limit: 1
    t.string  "Result chipping edge",                    limit: 1
    t.string  "Result curvature top",                    limit: 1
    t.string  "Result curvature bottom",                 limit: 1
    t.string  "Plenum depth result total",               limit: 1
    t.string  "Plenum depth result area 1",              limit: 1
    t.string  "Plenum depth result area 2",              limit: 1
    t.string  "IC 90° rotated",                          limit: 1
    t.string  "IC 180° rotated",                         limit: 1
    t.string  "IC length ok",                            limit: 1
    t.string  "IC width ok",                             limit: 1
    t.string  "IC hole pos ok",                          limit: 1
    t.string  "IC symmetry ok",                          limit: 1
    t.string  "Inspection valid",                        limit: 1
    t.integer "Inspection error evaluation"
    t.integer "Inspection error timing"
    t.integer "Inspection error img aquisition"
    t.string  "Inspection error belt stop",              limit: 1
    t.integer "Number of pits/voids"
    t.integer "Number of pos. material"
    t.decimal "Burr max. height [µm]",                              precision: 7, scale: 4
    t.decimal "Burr min. height top [µm]",                          precision: 5, scale: 4
    t.decimal "Burr max. height top [µm]",                          precision: 7, scale: 4
    t.decimal "Burr min. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr max. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr avg. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr min. height bottom [µm]",                       precision: 5, scale: 4
    t.decimal "Burr max. height bottom [µm]",                       precision: 6, scale: 4
    t.decimal "Burr min. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr max. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr avg. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr max. height airside [µm]",                      precision: 7, scale: 4
    t.decimal "Burr min. height top airside [µm]",                  precision: 5, scale: 4
    t.decimal "Burr max. height top airside [µm]",                  precision: 6, scale: 4
    t.decimal "Burr min. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr max. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr avg. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr min. height bottom airside [µm]",               precision: 5, scale: 4
    t.decimal "Burr max. height bottom airside [µm]",               precision: 7, scale: 4
    t.decimal "Burr min. width bottom airside [mm]",                precision: 5, scale: 4
    t.decimal "Burr max. width bottom airside [mm]",                precision: 5, scale: 4
    t.decimal "Burr avg. width bottom airside [mm]",                precision: 5, scale: 4
    t.integer "Number of base cracks"
    t.integer "Number of rib chips"
    t.decimal "rib chip length [mm]",                               precision: 5, scale: 4
    t.integer "Number of frame chips"
    t.decimal "frame chip area [mm²]",                              precision: 5, scale: 4
    t.integer "Number of cracks"
    t.decimal "Crack 1 length [mm]",                                precision: 6, scale: 4
    t.decimal "Crack 1 width [mm]",                                 precision: 6, scale: 4
    t.integer "Number of stains"
    t.decimal "stain area [mm²]",                                   precision: 6, scale: 4
    t.integer "Number of edge voids"
    t.integer "Number of edge chippings"
    t.decimal "edge chipping length [mm]",                          precision: 5, scale: 4
    t.decimal "edge chipping width [mm]",                           precision: 5, scale: 4
    t.decimal "top curvature meas. point 1 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 2 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 3 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 4 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 5 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 6 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 7 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 8 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 9 [µm]",                   precision: 5, scale: 4
    t.decimal "value curvature top [µm]",                           precision: 7, scale: 4
    t.decimal "top curvature shape [µm]",                           precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 1 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 2 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 3 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 4 [µm]",                precision: 7, scale: 4
    t.decimal "bottom curvature meas. point 5 [µm]",                precision: 7, scale: 4
    t.decimal "bottom curvature meas. point 6 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 7 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 8 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 9 [µm]",                precision: 5, scale: 4
    t.decimal "value curvature bottom [µm]",                        precision: 7, scale: 4
    t.decimal "bottom curvature shape [µm]",                        precision: 8, scale: 4
    t.decimal "thickness meas. point 1 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 2 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 3 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 4 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 5 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 6 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 7 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 8 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 9 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 10 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 11 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 12 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 13 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 14 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 15 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 16 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 17 [mm]",                      precision: 8, scale: 4
    t.integer "thickness average 17 pts. [µm]"
    t.integer "thickness variation 17 pts. [µm]"
    t.integer "thickness flow field average [µm]"
    t.integer "thickness flow field variation [µm]"
    t.integer "thickness perimeter average [µm]"
    t.integer "thickness perimeter variation [µm]"
    t.integer "thickness perimeter flow field [µm]"
    t.string  "A2 range top exceeded",                   limit: 1
    t.decimal "A² average weighted top [mm^4]",                     precision: 5, scale: 4
    t.decimal "A² top deviation last 10 ICs [mm^4]",                precision: 5, scale: 4
    t.decimal "top A² meas. point 1 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 2 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 3 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 4 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 5 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 6 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 7 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 8 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 9 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 10 [mm^4]",                       precision: 6, scale: 4
    t.string  "A2 range bottom exceeded",                limit: 1
    t.decimal "A² average weighted bottom [mm^4]",                  precision: 5, scale: 4
    t.decimal "A² bottom deviation last 10 ICs [mm^4]",             precision: 6, scale: 4
    t.decimal "bottom A² meas. point 1 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 2 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 3 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 4 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 5 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 6 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 7 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 8 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 9 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 10 [mm^4]",                    precision: 5, scale: 4
    t.decimal "A² bottom R1 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² bottom R3/R1 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R2/R1 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R3/R2 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R2 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² bottom R3 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² average cathode relief [mm^4]",                   precision: 5, scale: 4
    t.decimal "cathode relief A² meas. point 1 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 2 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 3 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 4 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 5 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 6 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 7 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 8 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 9 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 10 [mm^4]",            precision: 6, scale: 4
    t.decimal "Plenum depth area 1 average [µm]",                   precision: 7, scale: 4
    t.decimal "Plenum depth area 1 min [µm]",                       precision: 7, scale: 4
    t.decimal "Plenum depth area 1 max [µm]",                       precision: 7, scale: 4
    t.decimal "Plenum depth area 2 average [µm]",                   precision: 5, scale: 4
    t.decimal "Plenum depth area 2 min [µm]",                       precision: 5, scale: 4
    t.decimal "Plenum depth area 2 max [µm]",                       precision: 5, scale: 4
    t.decimal "IC length [mm]",                                     precision: 7, scale: 4
    t.decimal "IC width [mm]",                                      precision: 7, scale: 4
    t.decimal "hole top diameter [mm]",                             precision: 6, scale: 4
    t.decimal "hole top pos x [mm]",                                precision: 6, scale: 4
    t.decimal "hole top pos y [mm]",                                precision: 5, scale: 4
    t.decimal "hole bottom diameter [mm]",                          precision: 6, scale: 4
    t.decimal "hole bottom pos x [mm]",                             precision: 6, scale: 4
    t.decimal "hole bottom pos y [mm]",                             precision: 5, scale: 4
    t.decimal "IC hole true distance []",                           precision: 5, scale: 4
    t.decimal "IC symmetry x [mm]",                                 precision: 5, scale: 4
    t.decimal "IC symmetry y [mm]",                                 precision: 5, scale: 4
    t.string  "Powder lot no",                           limit: 11
    t.string  "Batch no",                                limit: 11
    t.string  "Cage no",                                 limit: 11
    t.string  "Recipe",                                  limit: 26
    t.decimal "Plenum edge combined stddev Fuel [mm]",              precision: 5, scale: 4
    t.decimal "Strip seal combined stddev Air [mm]",                precision: 9, scale: 4
    t.decimal "Strip seal combined stddev Fuel [mm]",               precision: 5, scale: 4
    t.decimal "D-flat combined stddev Air [mm]",                    precision: 9, scale: 4
    t.decimal "Flow field stddev Air [mm]",                         precision: 9, scale: 4
    t.decimal "Flow field stddev Fuel [mm]",                        precision: 5, scale: 4
    t.decimal "Rib end combined stddev Air [mm]",                   precision: 9, scale: 4
    t.decimal "Rib end combined stddev Fuel [mm]",                  precision: 5, scale: 4
    t.decimal "Perimeter delta Fuel [mm]",                          precision: 5, scale: 4
    t.decimal "Plenum edge combined offset Fuel [mm]",              precision: 5, scale: 4
    t.decimal "Strip seal combined offset Fuel [mm]",               precision: 5, scale: 4
    t.decimal "Strip seal combined offset Air [mm]",                precision: 9, scale: 4
    t.decimal "D-flat combined Offset Air [mm]",                    precision: 9, scale: 4
    t.integer "CCC Red count Air"
    t.integer "CCC Red count Fuel"
    t.integer "CCC Blue count Air"
    t.integer "CCC Blue count Fuel"
    t.decimal "Global curv X Fuel",                                 precision: 6, scale: 4
    t.decimal "Global curv Y Fuel",                                 precision: 6, scale: 4
    t.decimal "Global curv X Air",                                  precision: 6, scale: 4
    t.decimal "Global curv Y Air",                                  precision: 6, scale: 4
    t.string  "CTQ valid",                               limit: 1
    t.decimal "Rotation3D-1[°]",                                    precision: 6, scale: 4
    t.decimal "Rotation3D-2[°]",                                    precision: 6, scale: 4
    t.decimal "RotationGeo[°]",                                     precision: 5, scale: 4
  end

  create_table "TABLE 4", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Part No.",                                limit: 23
    t.string  "Time",                                    limit: 23
    t.string  "Nest",                                    limit: 23
    t.string  "Result",                                  limit: 23
    t.string  "Result pits/void",                        limit: 23
    t.string  "Result pos. material",                    limit: 23
    t.string  "Result burr top",                         limit: 23
    t.string  "Result burr bottom",                      limit: 23
    t.string  "Result burr top airside",                 limit: 23
    t.string  "Result burr bottom airside",              limit: 23
    t.string  "Result base crack",                       limit: 24
    t.string  "Result rib chip",                         limit: 24
    t.string  "Result frame chip",                       limit: 24
    t.string  "Result crack",                            limit: 24
    t.string  "Result stain",                            limit: 24
    t.string  "Result pits/void edge",                   limit: 24
    t.string  "Result chipping edge",                    limit: 24
    t.string  "Result curvature top",                    limit: 24
    t.string  "Result curvature bottom",                 limit: 24
    t.string  "Plenum depth result total",               limit: 24
    t.string  "Plenum depth result area 1",              limit: 24
    t.string  "Plenum depth result area 2",              limit: 24
    t.string  "IC 90° rotated",                          limit: 24
    t.string  "IC 180° rotated",                         limit: 24
    t.string  "IC length ok",                            limit: 24
    t.string  "IC width ok",                             limit: 1
    t.string  "IC hole pos ok",                          limit: 1
    t.string  "IC symmetry ok",                          limit: 1
    t.string  "Inspection valid",                        limit: 1
    t.integer "Inspection error evaluation"
    t.integer "Inspection error timing"
    t.integer "Inspection error img aquisition"
    t.string  "Inspection error belt stop",              limit: 1
    t.integer "Number of pits/voids"
    t.integer "Number of pos. material"
    t.decimal "Burr max. height [µm]",                              precision: 7, scale: 4
    t.decimal "Burr min. height top [µm]",                          precision: 5, scale: 4
    t.decimal "Burr max. height top [µm]",                          precision: 7, scale: 4
    t.decimal "Burr min. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr max. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr avg. width top [mm]",                           precision: 5, scale: 4
    t.decimal "Burr min. height bottom [µm]",                       precision: 5, scale: 4
    t.decimal "Burr max. height bottom [µm]",                       precision: 6, scale: 4
    t.decimal "Burr min. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr max. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr avg. width bottom [mm]",                        precision: 5, scale: 4
    t.decimal "Burr max. height airside [µm]",                      precision: 7, scale: 4
    t.decimal "Burr min. height top airside [µm]",                  precision: 5, scale: 4
    t.decimal "Burr max. height top airside [µm]",                  precision: 6, scale: 4
    t.decimal "Burr min. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr max. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr avg. width top airside [mm]",                   precision: 5, scale: 4
    t.decimal "Burr min. height bottom airside [µm]",               precision: 5, scale: 4
    t.decimal "Burr max. height bottom airside [µm]",               precision: 7, scale: 4
    t.decimal "Burr min. width bottom airside [mm]",                precision: 5, scale: 4
    t.decimal "Burr max. width bottom airside [mm]",                precision: 5, scale: 4
    t.decimal "Burr avg. width bottom airside [mm]",                precision: 5, scale: 4
    t.integer "Number of base cracks"
    t.integer "Number of rib chips"
    t.decimal "rib chip length [mm]",                               precision: 5, scale: 4
    t.integer "Number of frame chips"
    t.decimal "frame chip area [mm²]",                              precision: 5, scale: 4
    t.integer "Number of cracks"
    t.decimal "Crack 1 length [mm]",                                precision: 6, scale: 4
    t.decimal "Crack 1 width [mm]",                                 precision: 6, scale: 4
    t.integer "Number of stains"
    t.decimal "stain area [mm²]",                                   precision: 6, scale: 4
    t.integer "Number of edge voids"
    t.integer "Number of edge chippings"
    t.decimal "edge chipping length [mm]",                          precision: 5, scale: 4
    t.decimal "edge chipping width [mm]",                           precision: 5, scale: 4
    t.decimal "top curvature meas. point 1 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 2 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 3 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 4 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 5 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 6 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 7 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 8 [µm]",                   precision: 8, scale: 4
    t.decimal "top curvature meas. point 9 [µm]",                   precision: 5, scale: 4
    t.decimal "value curvature top [µm]",                           precision: 7, scale: 4
    t.decimal "top curvature shape [µm]",                           precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 1 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 2 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 3 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 4 [µm]",                precision: 7, scale: 4
    t.decimal "bottom curvature meas. point 5 [µm]",                precision: 7, scale: 4
    t.decimal "bottom curvature meas. point 6 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 7 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 8 [µm]",                precision: 8, scale: 4
    t.decimal "bottom curvature meas. point 9 [µm]",                precision: 5, scale: 4
    t.decimal "value curvature bottom [µm]",                        precision: 7, scale: 4
    t.decimal "bottom curvature shape [µm]",                        precision: 8, scale: 4
    t.decimal "thickness meas. point 1 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 2 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 3 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 4 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 5 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 6 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 7 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 8 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 9 [mm]",                       precision: 8, scale: 4
    t.decimal "thickness meas. point 10 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 11 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 12 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 13 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 14 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 15 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 16 [mm]",                      precision: 8, scale: 4
    t.decimal "thickness meas. point 17 [mm]",                      precision: 8, scale: 4
    t.integer "thickness average 17 pts. [µm]"
    t.integer "thickness variation 17 pts. [µm]"
    t.integer "thickness flow field average [µm]"
    t.integer "thickness flow field variation [µm]"
    t.integer "thickness perimeter average [µm]"
    t.integer "thickness perimeter variation [µm]"
    t.integer "thickness perimeter flow field [µm]"
    t.string  "A2 range top exceeded",                   limit: 1
    t.decimal "A² average weighted top [mm^4]",                     precision: 5, scale: 4
    t.decimal "A² top deviation last 10 ICs [mm^4]",                precision: 5, scale: 4
    t.decimal "top A² meas. point 1 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 2 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 3 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 4 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 5 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 6 [mm^4]",                        precision: 5, scale: 4
    t.decimal "top A² meas. point 7 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 8 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 9 [mm^4]",                        precision: 6, scale: 4
    t.decimal "top A² meas. point 10 [mm^4]",                       precision: 6, scale: 4
    t.string  "A2 range bottom exceeded",                limit: 1
    t.decimal "A² average weighted bottom [mm^4]",                  precision: 5, scale: 4
    t.decimal "A² bottom deviation last 10 ICs [mm^4]",             precision: 6, scale: 4
    t.decimal "bottom A² meas. point 1 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 2 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 3 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 4 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 5 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 6 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 7 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 8 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 9 [mm^4]",                     precision: 5, scale: 4
    t.decimal "bottom A² meas. point 10 [mm^4]",                    precision: 5, scale: 4
    t.decimal "A² bottom R1 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² bottom R3/R1 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R2/R1 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R3/R2 []",                                 precision: 5, scale: 4
    t.decimal "A² bottom R2 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² bottom R3 average [mm^4]",                        precision: 5, scale: 4
    t.decimal "A² average cathode relief [mm^4]",                   precision: 5, scale: 4
    t.decimal "cathode relief A² meas. point 1 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 2 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 3 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 4 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 5 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 6 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 7 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 8 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 9 [mm^4]",             precision: 6, scale: 4
    t.decimal "cathode relief A² meas. point 10 [mm^4]",            precision: 6, scale: 4
    t.decimal "Plenum depth area 1 average [µm]",                   precision: 7, scale: 4
    t.decimal "Plenum depth area 1 min [µm]",                       precision: 7, scale: 4
    t.decimal "Plenum depth area 1 max [µm]",                       precision: 7, scale: 4
    t.decimal "Plenum depth area 2 average [µm]",                   precision: 5, scale: 4
    t.decimal "Plenum depth area 2 min [µm]",                       precision: 5, scale: 4
    t.decimal "Plenum depth area 2 max [µm]",                       precision: 5, scale: 4
    t.decimal "IC length [mm]",                                     precision: 7, scale: 4
    t.decimal "IC width [mm]",                                      precision: 7, scale: 4
    t.decimal "hole top diameter [mm]",                             precision: 6, scale: 4
    t.decimal "hole top pos x [mm]",                                precision: 6, scale: 4
    t.decimal "hole top pos y [mm]",                                precision: 5, scale: 4
    t.decimal "hole bottom diameter [mm]",                          precision: 6, scale: 4
    t.decimal "hole bottom pos x [mm]",                             precision: 6, scale: 4
    t.decimal "hole bottom pos y [mm]",                             precision: 5, scale: 4
    t.decimal "IC hole true distance []",                           precision: 5, scale: 4
    t.decimal "IC symmetry x [mm]",                                 precision: 5, scale: 4
    t.decimal "IC symmetry y [mm]",                                 precision: 5, scale: 4
    t.string  "Powder lot no",                           limit: 11
    t.string  "Batch no",                                limit: 11
    t.string  "Cage no",                                 limit: 11
    t.string  "Recipe",                                  limit: 26
    t.decimal "Plenum edge combined stddev Fuel [mm]",              precision: 5, scale: 4
    t.decimal "Strip seal combined stddev Air [mm]",                precision: 9, scale: 4
    t.decimal "Strip seal combined stddev Fuel [mm]",               precision: 5, scale: 4
    t.decimal "D-flat combined stddev Air [mm]",                    precision: 9, scale: 4
    t.decimal "Flow field stddev Air [mm]",                         precision: 9, scale: 4
    t.decimal "Flow field stddev Fuel [mm]",                        precision: 5, scale: 4
    t.decimal "Rib end combined stddev Air [mm]",                   precision: 9, scale: 4
    t.decimal "Rib end combined stddev Fuel [mm]",                  precision: 5, scale: 4
    t.decimal "Perimeter delta Fuel [mm]",                          precision: 5, scale: 4
    t.decimal "Plenum edge combined offset Fuel [mm]",              precision: 5, scale: 4
    t.decimal "Strip seal combined offset Fuel [mm]",               precision: 5, scale: 4
    t.decimal "Strip seal combined offset Air [mm]",                precision: 9, scale: 4
    t.decimal "D-flat combined Offset Air [mm]",                    precision: 9, scale: 4
    t.integer "CCC Red count Air"
    t.integer "CCC Red count Fuel"
    t.integer "CCC Blue count Air"
    t.integer "CCC Blue count Fuel"
    t.decimal "Global curv X Fuel",                                 precision: 6, scale: 4
    t.decimal "Global curv Y Fuel",                                 precision: 6, scale: 4
    t.decimal "Global curv X Air",                                  precision: 6, scale: 4
    t.decimal "Global curv Y Air",                                  precision: 6, scale: 4
    t.string  "CTQ valid",                               limit: 1
    t.decimal "Rotation3D-1[°]",                                    precision: 6, scale: 4
    t.decimal "Rotation3D-2[°]",                                    precision: 6, scale: 4
    t.decimal "RotationGeo[°]",                                     precision: 5, scale: 4
  end

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "body",                              limit: 65535
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.text     "issue_description",                 limit: 65535
    t.text     "action_taken",                      limit: 65535
    t.integer  "survey_id"
    t.text     "issue_followup_notes_by_lpa_admin", limit: 65535
    t.datetime "issue_closed_by_lpa_admin"
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
    t.index ["survey_id"], name: "index_answers_on_survey_id", using: :btree
    t.index ["user_id"], name: "index_answers_on_user_id", using: :btree
  end

  create_table "dc_disciplines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "date_discipline"
    t.integer  "stf_employee_id"
    t.string   "discipline_by"
    t.integer  "dc_level_id"
    t.integer  "dc_stream_id"
    t.text     "infraction_description", limit: 65535
    t.text     "dc_action",              limit: 65535
    t.text     "dc_comment",             limit: 65535
    t.text     "output",                 limit: 65535
    t.integer  "sort_order"
    t.integer  "active_status"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["dc_level_id"], name: "index_dc_disciplines_on_dc_level_id", using: :btree
    t.index ["dc_stream_id"], name: "index_dc_disciplines_on_dc_stream_id", using: :btree
    t.index ["stf_employee_id"], name: "index_dc_disciplines_on_stf_employee_id", using: :btree
  end

  create_table "dc_levels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort_order"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dc_streams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "active_status"
    t.integer  "sort_order"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pp_parkingpasses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clock1",       limit: 8
    t.string   "en_name",      limit: 22
    t.string   "parking_pass", limit: 50
    t.string   "dept",         limit: 7
    t.string   "company",      limit: 28
    t.string   "grouping",     limit: 16
    t.string   "estatus",      limit: 3
    t.string   "supervisor",   limit: 39
    t.string   "en_clock",     limit: 39
    t.datetime "created_at",              null: false
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stf_employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "clocknum"
    t.integer  "active_status", default: 1
    t.integer  "sort"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",    default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["clocknum", "name"], name: "index_stf_employees_on_clocknum_and_name", unique: true, using: :btree
  end

  create_table "tnlist", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "num"
    t.string   "cell",                     limit: 15
    t.date     "issues_when"
    t.string   "issues_where",             limit: 50
    t.string   "originator",               limit: 50
    t.text     "what",                     limit: 65535
    t.text     "why_comment_who_involved", limit: 65535
    t.string   "category",                 limit: 22
    t.string   "type",                     limit: 5
    t.text     "actions_what",             limit: 65535
    t.string   "actions_who",              limit: 50
    t.date     "actions_when_target"
    t.string   "actions_priority",         limit: 1,     default: "c"
    t.date     "date_done"
    t.string   "is_implementd",            limit: 1,     default: "N"
    t.string   "summary_category",         limit: 245
    t.datetime "createdtime",                            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
    t.string   "a_col1",                   limit: 199,   default: "literal"
    t.integer  "a_int1",                                 default: 1
    t.integer  "a_int2",                                 default: 1
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "role_id"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "encrypted_password",                 default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "Role",                   limit: 9,   default: "NO", null: false
    t.string   "username",               limit: 234, default: "x",  null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  add_foreign_key "dc_disciplines", "dc_levels"
  add_foreign_key "dc_disciplines", "dc_streams"
  add_foreign_key "dc_disciplines", "stf_employees"
end
