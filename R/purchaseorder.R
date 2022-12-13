#' 销售出库处理
#'
#' @param startDate 开始日期
#' @param endDate 结束日期
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ecs_rdpurchaseorder()
ecs_rdpurchaseorder <- function(startDate,endDate) {
  #注册python模板
  mdl <- tsda::import('rdpurchaseorder.mainModel')
  #调用python函数，将.替代为$
  res <- mdl$purchaseOrder(startDate =startDate ,endDate = endDate)
  #返回结果
  return(res)

}

