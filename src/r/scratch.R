FactTimepointAdherence_yesterday[DimStop[,.(StopKey
                                            , StopID
                                            , StopDesc
                                            , StopReportLabel
                                            )
                                         ]
                                 ,on = c("DepartStopKey" = "StopKey")
                                 ,names(DimStop[,.(StopKey
                                                   , StopID
                                                   , StopDesc
                                                   , StopReportLabel
                                                   )
                                                ]
                                        ) := mget(paste0("i."
                                                         , names(DimStop[, .(StopKey
                                                                             , StopID
                                                                             , StopDesc
                                                                             , StopReportLabel
                                                                             )
                                                                         ]
                                                                 )
                                                         )
                                                  )
                                 ]

x <- c("DepartStopKey")
y <- c("StopKey")

FactTimepointAdherence_since_september[1
                                       ][DimStop
                                         , on = paste0(x,"==",y)
                                         ][order(DateKey)
                                           ]

paste0(x,"==",y)

FactTimepointAdherence_since_september[1][DimStop
                                          , on = c("DepartStopKey==StopKey")
                                          ][order(DateKey)]
