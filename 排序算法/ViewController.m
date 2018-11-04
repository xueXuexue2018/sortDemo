//
//  ViewController.m
//  排序算法
//
//  Created by XJL on 2018/9/14.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  NSArray *arr=@[@1,@4,@88,@9,@10,@23];
  
  NSLog(@"选择排序：%@",[self selecteSort:[arr mutableCopy]]);
  
  NSLog(@"冒泡排序：%@",[self bubblingSort:[arr mutableCopy]]);
}
//  1、选择排序
/**
 *  【选择排序】：最值出现在起始端
 *
 *  第1趟：在n个数中找到最小(大)数与第一个数交换位置
 *  第2趟：在剩下n-1个数中找到最小(大)数与第二个数交换位置
 *  重复这样的操作...依次与第三个、第四个...数交换位置
 *  第n-1趟，最终可实现数据的升序（降序）排列。
 *
 */
-(NSArray *)selecteSort:(NSMutableArray*)selArr{
  
  for (int i=0; i<selArr.count; i++) {
    for (int j=i+1; j<selArr.count; j++) {
      if (selArr[i]>selArr[j]) {
        id temp=selArr[i];
        selArr[i]=selArr[j];
        selArr[j]=temp;
      }
    }
  }
  return [selArr mutableCopy];
}
/**
 *  【冒泡排序】：相邻元素两两比较，比较完一趟，最值出现在末尾
 *  第1趟：依次比较相邻的两个数，不断交换（小数放前，大数放后）逐个推进，最值最后出现在第n个元素位置
 *  第2趟：依次比较相邻的两个数，不断交换（小数放前，大数放后）逐个推进，最值最后出现在第n-1个元素位置
 *   ……   ……
 *  第n-1趟：依次比较相邻的两个数，不断交换（小数放前，大数放后）逐个推进，最值最后出现在第2个元素位置
 */
-(NSArray *)bubblingSort:(NSMutableArray *)bubblingArr{
  for (int i=0; i<bubblingArr.count-1; i++) {
    for (int j=0; j<bubblingArr.count-i-1; j++) {
      if (bubblingArr[j]>bubblingArr[j+1]) {
        id temp=bubblingArr[j];
        bubblingArr[j]=bubblingArr[j+1];
        bubblingArr[j+1]=temp;
      }
    }
  }
  return [bubblingArr mutableCopy];
}
/**
 *  折半查找：优化查找时间（不用遍历全部数据）
 *
 *  折半查找的原理：
 *   1> 数组必须是有序的
 *   2> 必须已知min和max（知道范围）
 *   3> 动态计算mid的值，取出mid对应的值进行比较
 *   4> 如果mid对应的值大于要查找的值，那么max要变小为mid-1
 *   5> 如果mid对应的值小于要查找的值，那么min要变大为mid+1
 *
 */
-(NSArray *)findKey:(NSMutableArray *)findArr{
  int min=0;
  int max=findArr.count-1;
  int mid;
  int key=10;
  while (min<=max) {
    mid=(min+max)/2;
    if (key>findArr[mid]) {
      min=mid+1;
    }else if (key<findArr[mid]){
      max=mid-1;
    }else{
      
    }
  }
  return [findArr mutableCopy];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
