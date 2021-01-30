# Copyright 2018 Xored Software, Inc.

type
  VariantType* {.size: sizeof(cint), pure.} = enum
    Nil,   ##  atomic types
    Bool,
    Int,
    Real,
    String,
    # math types
    Vector2, ##  5
    Rect2,
    Vector3,
    Transform2D,
    Plane,
    Quat, ##  10
    AABB,
    Basis,
    Transform, ##  misc types
    Color,
    NodePath, ##  15
    RID,
    VObject,
    Dictionary,
    Array,
    # arrays
    PoolByteArray, ## 20
    PoolIntArray,
    PoolRealArray,
    PoolStringArray,
    PoolVector2Array,
    PoolVector3Array, ## 25
    PoolColorArray

  VariantCallErrorType* {.size: sizeof(cint), pure.} = enum
    OK,
    InvalidMethod,
    InvalidArgument,
    TooManyArguments,
    TooFewArguments,
    InstanceIsNull

  VariantCallError* = object
    error*: VariantCallErrorType
    argument*: cint
    expected*: VariantType