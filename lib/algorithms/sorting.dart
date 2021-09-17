import 'dart:async';
import 'dart:math';

import 'package:algorithmvisualizer/pages/sortingalgopage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sorting extends StatefulWidget {
  //const Sorting({ Key? key }) : super(key: key);
  final int choice ;
Sorting({required this.choice});
  @override
  _SortingState createState() => _SortingState(choice: choice);
}

class _SortingState extends State<Sorting> {
final int choice ;
_SortingState({required this.choice});
double _currentSpeedValue = 50;
  double _currentSizeValue = 50;

  List<int>elements = [];
  int seconds =5000;
  int samplesize=450;
  StreamController<List<int>> _streamController=StreamController();
  int idx=-1;

_randomize(){
  elements = [];
for(int i=0;i<samplesize;i++)
{
  elements.add(Random().nextInt(samplesize)+1);
}
//setState(() {});
_streamController.add(elements);
}
updatespeed(double value,int samplesize)
{
seconds=(450*250000)~/(samplesize*value.toInt());
}

selectionsort()async{
  
    int i, j, minIdx,temp;
    for (i = 0; i < samplesize-1; i++)
    {
      
        minIdx = i;
        for (j = i+1; j < samplesize; j++)
        if (elements[j] < elements[minIdx])
        {
            minIdx = j;idx=j;
        }
        temp = elements[minIdx];
        elements[minIdx] = elements[i];
        elements[i] = temp;
       await Future.delayed(Duration(microseconds: seconds));
        //setState(() {});
        _streamController.add(elements);
    }
    idx=-1;
}
bubblesort()async{
int i, j,temp;
   bool swapped;
   for (i = 0; i < samplesize-1; i++)
   {
     swapped = false;idx=i;
     for (j = 0; j < samplesize-i-1; j++)
     {

        if (elements[j] > elements[j+1])
        {
          temp = elements[j];
          elements[j] = elements[j+1];
          elements[j+1] = temp;
           swapped = true;
        }
     }
  
     // IF no two elements were swapped by inner loop, then break
     if (swapped == false)
        break;
        await Future.delayed(Duration(microseconds:seconds));
        //setState(() {});
        _streamController.add(elements);
   }
   idx=-1;
}
_insertionsort()async{
int i, curr, j;
    for (i = 1; i < samplesize; i++)
    {
        curr = elements[i];idx=i;
        j = i - 1;
        while (j >= 0 && elements[j] > curr)
        {
            elements[j + 1] = elements[j];
            j = j - 1;
        }
        elements[j + 1] = curr;
        await Future.delayed(Duration(microseconds: seconds));
        //setState(() {});
        _streamController.add(elements);
    }
    idx=-1;
}
 mergesort(List<int> arr, int low, int high) async {
    if (low < high) {
      // Same as (l+r)/2, but avoids overflow for
      // large l and h
      int mid = (low + (high - low) / 2).toInt();
      // Sort first and second halves
      await mergesort(arr, low, mid);
      await mergesort(arr, mid + 1, high);
      await Future.delayed(Duration(microseconds:seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      await merge(arr, low, mid, high);
    }
  }

  //helper function to merge the array for merge sort
  merge(List<int> a, int low, int mid, int high) async {
    int i, j, k;
    int n1 = mid - low + 1;
    int n2 = high - mid;

    /* create temp arrays */
    List<int> left = [], right = [];

    /* Copy data to temp arrays L[] and R[] */
    for (i = 0; i < n1; i++)
      left.add(a[low + i]); //L[i] = mergeArr[low + i];
    for (j = 0; j < n2; j++)
      right.add(a[mid + 1 + j]); //R[j] = mergeArr[mid + 1 + j];

    i = 0;
    j = 0;
    k = low;
    while (i < n1 && j < n2) {
      
      if (left[i] <= right[j]) {
        a[k] = left[i];
        i++;
      } else {
        a[k] = right[j];
        j++;
      }
      await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      k++;
    }

    while (i < n1) {
      a[k] = left[i];
      i++;
      k++;
    }

    while (j < n2) {
      a[k] = right[j];
      j++;
      k++;
    }
  }
 quicksort(List<int> arr, int low, int high) async {
    if (low < high) {
      /* pi is partitioning index, arr[pi] is now
           at right place */
      int pivot = await _partition(arr, low, high);
      await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      await quicksort(arr, low, pivot - 1); // Before pi
      await quicksort(arr, pivot + 1, high);
      idx=-1; // After pi
    }
  }

  //helper function to partition array for quicksort
  Future<int> _partition(List<int> a, int low, int high) async {
    int pivot = a[high];
    int i = (low - 1);
    int temp;idx=pivot;
    for (int j = low; j <= high - 1; j++) {
      
      if (a[j] < pivot) {
        i++;
        temp = a[i];
        a[i] = a[j];
        a[j] = temp;
        await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      }
    }
    temp = a[i + 1];
    a[i + 1] = a[high];
    a[high] = temp;
    await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
    return (i + 1);
  }

  heapsort(List<int> arr) async {
    int n = arr.length;

    // Build heap (rearrange array)
    for (int i = n ~/ 2 - 1; i >= 0; i--) await heapify(arr, n, i);

    // One by one extract an element from heap
    for (int i = n - 1; i >= 0; i--) {
      // Move current root to end
      int temp = arr[0];
      arr[0] = arr[i];
      arr[i] = temp;
      await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      // call max heapify on the reduced heap
      await heapify(arr, i, 0);
    }
  }

  heapify(List<int> heapArray, int n, int i) async {
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;

    // If left child is larger than root
    if (l < n && heapArray[l] > heapArray[largest]) largest = l;

    // If right child is larger than largest so far
    if (r < n && heapArray[r] > heapArray[largest]) largest = r;
    // If largest is not root
    if (largest != i) {
      int swap = heapArray[i];
      heapArray[i] = heapArray[largest];
      heapArray[largest] = swap;
      await Future.delayed(Duration(microseconds: seconds~/50));
        //setState(() {});
        _streamController.add(elements);
      // Recursively heapify the affected sub-tree
      await heapify(heapArray, n, largest);
    }
  }




@override
void initState()
{
  _streamController = StreamController<List<int>>();
  super.initState();
  _randomize();
}

  @override
  Widget build(BuildContext context) {
    
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: AppBar(),
        body: Stack(
         // fit: StackFit.expand,
          children: [
            StreamBuilder<List<int>>(
              initialData: elements,
              stream: _streamController.stream,
              builder: (context, snapshot) {
                int counter =0;
                List<int>? numbers = snapshot.data;
                return Row(
                  children: numbers!.map((int number){
                    counter++;
                   return CustomPaint(
                    painter: ElementBars(
                      width:screenSize.width/samplesize,
                      height:number*430~/samplesize,
                      index:counter,
                      checkingValueIdx: idx),
                   );
                  }).toList(),
                );
              }
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.32,
              minChildSize: 0.32,
              builder: (context,controller)=>ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                child: Container(
                color:Color(0xff061a39) ,
                child: SingleChildScrollView(
                  controller: controller,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: screenSize.height*0.015,),
                        Slider(
                          activeColor: Color(0xfff0c076),
                          inactiveColor: Colors.grey,
                       value: _currentSpeedValue,
                       min: 1,
                       max: 100,
                       divisions: 100,
                       label: _currentSpeedValue.round().toString(),
                       onChanged: (double value) {
                       setState(() {
                      _currentSpeedValue = value;
                       updatespeed(value,samplesize);
                       });
                       },
                      ),
                      Text('Speed',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                        ,fontSize: 15,fontWeight: FontWeight.w600),)),
              
                        Slider(
                          activeColor: Color(0xfff0c076),
                          inactiveColor: Colors.grey,
                       value: _currentSizeValue,
                       min: 1,
                       max: 100,
                       divisions: 100,
                       label: _currentSizeValue.round().toString(),
                       onChanged: (double value) {
                       setState(() {
                      _currentSizeValue = value;
                      samplesize = value.toInt()*9;
                      _randomize();updatespeed(seconds.ceilToDouble(),samplesize);
                       });
                       },
                      ),
                      Text('Element size',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                        ,fontSize: 15,fontWeight: FontWeight.w600),)),
                        SizedBox(height: screenSize.height*0.025,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){
                              if(choice==1)selectionsort();
                              else if(choice==2)bubblesort();
                              else if(choice==3)_insertionsort();
                              else if(choice==4)mergesort(elements,0,samplesize-1);
                              else if(choice==5)quicksort(elements,0,samplesize-1);
                              else if(choice==6)heapsort(elements);
                            }, child: Container(width: screenSize.width*0.22,
                              child: Text('Sort',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                        ,fontSize: 18,fontWeight: FontWeight.w600))),
                            ),
                            style:ElevatedButton.styleFrom(primary:Color(0xfff0c076),),),
              
                            SizedBox(width:screenSize.width*0.1 ),
              
                            ElevatedButton(onPressed: _randomize, child: Container(width: screenSize.width*0.22,
                              child: Text('Randomize',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Colors.white
                        ,fontSize: 18,fontWeight: FontWeight.w600))),
                            ),
                            style:ElevatedButton.styleFrom(primary:Color(0xfff0c076) ),)
                          ],
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> SortingPage()));
                        }, child: Text('Go Back',textAlign: TextAlign.center,style:GoogleFonts.sourceSansPro( textStyle: TextStyle(color: Color(0xfff0c076)
                        ,fontSize: 18,fontWeight: FontWeight.w600))))
                      ],
                    ),
                  ),
                ),
                          ),
              ))
          ],
        )
      ),
    );
  }
}

class ElementBars extends CustomPainter{
  final double width;
  final int height;
  final int index;

  var checkingValueIdx;

  ElementBars({required this.width,required this.height,required this.index,this.checkingValueIdx});
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint=Paint();
  if(checkingValueIdx != -1 && index == checkingValueIdx)
  paint.color= Color(0xfff0c076);
  else
  {
   if (this.height < 450 * .10) {
      paint.color = Color(0xffe9f1fd);
    } else if (this.height < 450 * .20) {
      paint.color = Color(0xffd2e2fa);
    } else if (this.height < 450 * .30) {
      paint.color = Color(0xffbbd3f8);
    } else if (this.height < 450 * .40) {
      paint.color = Color(0xffa4c4f5);
    } else if (this.height < 450 * .50) {
      paint.color = Color(0xff8db5f3);
    } else if (this.height < 450 * .60) {
      paint.color = Color(0xff76a6f0);
    } else if (this.height < 450 * .70) {
      paint.color = Color(0xff5f97ed);
    } else if (this.height < 450 * .80) {
      paint.color = Color(0xff4888eb);
    } else if (this.height < 450 * .90) {
      paint.color = Color(0xff3179e8);
    } else {
      paint.color = Color(0xff124ba4);
    }
  }
  paint.strokeWidth = width;
  paint.strokeCap=StrokeCap.square;

  canvas.drawLine(Offset(index*width, 0),Offset(index*this.width,this.height.ceilToDouble()),paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}