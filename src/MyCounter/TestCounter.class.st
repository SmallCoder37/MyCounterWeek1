Class {
	#name : #TestCounter,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #tests }
TestCounter >> testCounterIsSetAndRead [

| c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
TestCounter >> testDecrement [

| c |
c := Counter new.
c count: 2.
c decrement ; decrement.
self assert: c count equals: 0
]

{ #category : #tests }
TestCounter >> testDecrement2 [

| c |
c := Counter new.
c count: 4.
c decrement2 ; decrement2.
self assert: c count equals: 0
]

{ #category : #tests }
TestCounter >> testIncrement [

| c |
c := Counter new.
c count: 2.
c increment ; increment.
self assert: c count equals: 4
]
