.class public Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;
    }
.end annotation


# static fields
.field public static final INVALID_DISTANCE:D = 1200.0

.field private static final TAG:Ljava/lang/String; = "SpenColorMatching"


# instance fields
.field private mHSV2:[[F

.field private mLastMatchedDistanceValue:D

.field private mLastMatchedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa9

    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1c

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1d

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1f

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_20

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_21

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_22

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_23

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_24

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_25

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_26

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_27

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_28

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_29

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2a

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2b

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2c

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2d

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2e

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2f

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_30

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_31

    const/16 v3, 0x31

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_32

    const/16 v3, 0x32

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_33

    const/16 v3, 0x33

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_34

    const/16 v3, 0x34

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_35

    const/16 v3, 0x35

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_36

    const/16 v3, 0x36

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_37

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_38

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_39

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3a

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3b

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3c

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3d

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3e

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3f

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_40

    const/16 v3, 0x40

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_41

    const/16 v3, 0x41

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_42

    const/16 v3, 0x42

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_43

    const/16 v3, 0x43

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_44

    const/16 v3, 0x44

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_45

    const/16 v3, 0x45

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_46

    const/16 v3, 0x46

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_47

    const/16 v3, 0x47

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_48

    const/16 v3, 0x48

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_49

    const/16 v3, 0x49

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4a

    const/16 v3, 0x4a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4b

    const/16 v3, 0x4b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4c

    const/16 v3, 0x4c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4d

    const/16 v3, 0x4d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    const/16 v3, 0x4e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4f

    const/16 v3, 0x4f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_50

    const/16 v3, 0x50

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_51

    const/16 v3, 0x51

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_52

    const/16 v3, 0x52

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_53

    const/16 v3, 0x53

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_54

    const/16 v3, 0x54

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_55

    const/16 v3, 0x55

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_56

    const/16 v3, 0x56

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_57

    const/16 v3, 0x57

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_58

    const/16 v3, 0x58

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_59

    const/16 v3, 0x59

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5a

    const/16 v3, 0x5a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5b

    const/16 v3, 0x5b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5c

    const/16 v3, 0x5c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5d

    const/16 v3, 0x5d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5e

    const/16 v3, 0x5e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_5f

    const/16 v3, 0x5f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_60

    const/16 v3, 0x60

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_61

    const/16 v3, 0x61

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_62

    const/16 v3, 0x62

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_63

    const/16 v3, 0x63

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_64

    const/16 v3, 0x64

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_65

    const/16 v3, 0x65

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_66

    const/16 v3, 0x66

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_67

    const/16 v3, 0x67

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_68

    const/16 v3, 0x68

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_69

    const/16 v3, 0x69

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6a

    const/16 v3, 0x6a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6b

    const/16 v3, 0x6b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6c

    const/16 v3, 0x6c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6d

    const/16 v3, 0x6d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6e

    const/16 v3, 0x6e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6f

    const/16 v3, 0x6f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_70

    const/16 v3, 0x70

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_71

    const/16 v3, 0x71

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_72

    const/16 v3, 0x72

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_73

    const/16 v3, 0x73

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_74

    const/16 v3, 0x74

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_75

    const/16 v3, 0x75

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_76

    const/16 v3, 0x76

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_77

    const/16 v3, 0x77

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_78

    const/16 v3, 0x78

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_79

    const/16 v3, 0x79

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7a

    const/16 v3, 0x7a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7b

    const/16 v3, 0x7b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    const/16 v3, 0x7c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7d

    const/16 v3, 0x7d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7e

    const/16 v3, 0x7e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_7f

    const/16 v3, 0x7f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_80

    const/16 v3, 0x80

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_81

    const/16 v3, 0x81

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_82

    const/16 v3, 0x82

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_83

    const/16 v3, 0x83

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_84

    const/16 v3, 0x84

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_85

    const/16 v3, 0x85

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_86

    const/16 v3, 0x86

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_87

    const/16 v3, 0x87

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_88

    const/16 v3, 0x88

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_89

    const/16 v3, 0x89

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8a

    const/16 v3, 0x8a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8b

    const/16 v3, 0x8b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8c

    const/16 v3, 0x8c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8d

    const/16 v3, 0x8d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8e

    const/16 v3, 0x8e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8f

    const/16 v3, 0x8f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_90

    const/16 v3, 0x90

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_91

    const/16 v3, 0x91

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_92

    const/16 v3, 0x92

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_93

    const/16 v3, 0x93

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_94

    const/16 v3, 0x94

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_95

    const/16 v3, 0x95

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_96

    const/16 v3, 0x96

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_97

    const/16 v3, 0x97

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_98

    const/16 v3, 0x98

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_99

    const/16 v3, 0x99

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9a

    const/16 v3, 0x9a

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9b

    const/16 v3, 0x9b

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9c

    const/16 v3, 0x9c

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9d

    const/16 v3, 0x9d

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9e

    const/16 v3, 0x9e

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_9f

    const/16 v3, 0x9f

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a0

    const/16 v3, 0xa0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a1

    const/16 v3, 0xa1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a2

    const/16 v3, 0xa2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a3

    const/16 v3, 0xa3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a4

    const/16 v3, 0xa4

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a5

    const/16 v3, 0xa5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a6

    const/16 v3, 0xa6

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a7

    const/16 v3, 0xa7

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_a8

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mHSV2:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3de147ae    # 0.11f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x41c80000    # 25.0f
        0x3e051eb8    # 0.13f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x422c0000    # 43.0f
        0x3e0f5c29    # 0.14f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x42640000    # 57.0f
        0x3e0f5c29    # 0.14f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x42c40000    # 98.0f
        0x3db851ec    # 0.09f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x430f0000    # 143.0f
        0x3dcccccd    # 0.1f
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_7
    .array-data 4
        0x432c0000    # 172.0f
        0x3de147ae    # 0.11f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x43540000    # 212.0f
        0x3e0f5c29    # 0.14f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x43640000    # 228.0f
        0x3e0f5c29    # 0.14f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x43880000    # 272.0f
        0x3e0f5c29    # 0.14f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x43970000    # 302.0f
        0x3de147ae    # 0.11f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x43a88000    # 337.0f
        0x3de147ae    # 0.11f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x3f666666    # 0.9f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3e570a3d    # 0.21f
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x41d00000    # 26.0f
        0x3e6b851f    # 0.23f
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x42300000    # 44.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x42640000    # 57.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x42c40000    # 98.0f
        0x3e19999a    # 0.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_13
    .array-data 4
        0x43100000    # 144.0f
        0x3e3851ec    # 0.18f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_14
    .array-data 4
        0x432c0000    # 172.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x43530000    # 211.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x43640000    # 228.0f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x43880000    # 272.0f
        0x3e570a3d    # 0.21f
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x43970000    # 302.0f
        0x3e428f5c    # 0.19f
        0x3f800000    # 1.0f
    .end array-data

    :array_19
    .array-data 4
        0x43a88000    # 337.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x3ebd70a4    # 0.37f
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x41d00000    # 26.0f
        0x3eb851ec    # 0.36f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        0x42340000    # 45.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0x42640000    # 57.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1f
    .array-data 4
        0x42c40000    # 98.0f
        0x3e75c28f    # 0.24f
        0x3f800000    # 1.0f
    .end array-data

    :array_20
    .array-data 4
        0x43100000    # 144.0f
        0x3e947ae1    # 0.29f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_21
    .array-data 4
        0x432c0000    # 172.0f
        0x3ea3d70a    # 0.32f
        0x3f800000    # 1.0f
    .end array-data

    :array_22
    .array-data 4
        0x43530000    # 211.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_23
    .array-data 4
        0x43630000    # 227.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x43880000    # 272.0f
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
    .end array-data

    :array_25
    .array-data 4
        0x43970000    # 302.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        0x43a88000    # 337.0f
        0x3ea3d70a    # 0.32f
        0x3f800000    # 1.0f
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_28
    .array-data 4
        0x40000000    # 2.0f
        0x3f028f5c    # 0.51f
        0x3f800000    # 1.0f
    .end array-data

    :array_29
    .array-data 4
        0x41d00000    # 26.0f
        0x3efae148    # 0.49f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x42340000    # 45.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_2b
    .array-data 4
        0x42640000    # 57.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_2c
    .array-data 4
        0x42c40000    # 98.0f
        0x3ea8f5c3    # 0.33f
        0x3f800000    # 1.0f
    .end array-data

    :array_2d
    .array-data 4
        0x43100000    # 144.0f
        0x3ecccccd    # 0.4f
        0x3f7851ec    # 0.97f
    .end array-data

    :array_2e
    .array-data 4
        0x432c0000    # 172.0f
        0x3ee147ae    # 0.44f
        0x3f800000    # 1.0f
    .end array-data

    :array_2f
    .array-data 4
        0x43530000    # 211.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_30
    .array-data 4
        0x43630000    # 227.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data

    :array_31
    .array-data 4
        0x43880000    # 272.0f
        0x3ef5c28f    # 0.48f
        0x3f800000    # 1.0f
    .end array-data

    :array_32
    .array-data 4
        0x43970000    # 302.0f
        0x3ed1eb85    # 0.41f
        0x3f800000    # 1.0f
    .end array-data

    :array_33
    .array-data 4
        0x43a88000    # 337.0f
        0x3ee147ae    # 0.44f
        0x3f800000    # 1.0f
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x0
        0x3f19999a    # 0.6f
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x3f266666    # 0.65f
        0x3f800000    # 1.0f
    .end array-data

    :array_36
    .array-data 4
        0x41d00000    # 26.0f
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    :array_37
    .array-data 4
        0x42340000    # 45.0f
        0x3f28f5c3    # 0.66f
        0x3f800000    # 1.0f
    .end array-data

    :array_38
    .array-data 4
        0x42640000    # 57.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_39
    .array-data 4
        0x42c40000    # 98.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_3a
    .array-data 4
        0x43100000    # 144.0f
        0x3efae148    # 0.49f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_3b
    .array-data 4
        0x432c0000    # 172.0f
        0x3f07ae14    # 0.53f
        0x3f800000    # 1.0f
    .end array-data

    :array_3c
    .array-data 4
        0x43530000    # 211.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3d
    .array-data 4
        0x43630000    # 227.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3e
    .array-data 4
        0x43870000    # 270.0f
        0x3f147ae1    # 0.58f
        0x3f800000    # 1.0f
    .end array-data

    :array_3f
    .array-data 4
        0x43970000    # 302.0f
        0x3f07ae14    # 0.53f
        0x3f800000    # 1.0f
    .end array-data

    :array_40
    .array-data 4
        0x43a88000    # 337.0f
        0x3f0f5c29    # 0.56f
        0x3f800000    # 1.0f
    .end array-data

    :array_41
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x3f4a3d71    # 0.79f
        0x3f800000    # 1.0f
    .end array-data

    :array_43
    .array-data 4
        0x41d00000    # 26.0f
        0x3f428f5c    # 0.76f
        0x3f800000    # 1.0f
    .end array-data

    :array_44
    .array-data 4
        0x42340000    # 45.0f
        0x3f4f5c29    # 0.81f
        0x3f800000    # 1.0f
    .end array-data

    :array_45
    .array-data 4
        0x42680000    # 58.0f
        0x3f666666    # 0.9f
        0x3f7d70a4    # 0.99f
    .end array-data

    :array_46
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_47
    .array-data 4
        0x43100000    # 144.0f
        0x3f2e147b    # 0.68f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_48
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_49
    .array-data 4
        0x43530000    # 211.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4a
    .array-data 4
        0x43630000    # 227.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4b
    .array-data 4
        0x43870000    # 270.0f
        0x3f30a3d7    # 0.69f
        0x3f800000    # 1.0f
    .end array-data

    :array_4c
    .array-data 4
        0x43970000    # 302.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_4d
    .array-data 4
        0x43a88000    # 337.0f
        0x3f23d70a    # 0.64f
        0x3f800000    # 1.0f
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_4f
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_50
    .array-data 4
        0x41d00000    # 26.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_51
    .array-data 4
        0x42340000    # 45.0f
        0x3f800000    # 1.0f
        0x3f7851ec    # 0.97f
    .end array-data

    :array_52
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3f7851ec    # 0.97f
    .end array-data

    :array_53
    .array-data 4
        0x42c20000    # 97.0f
        0x3f19999a    # 0.6f
        0x3f7851ec    # 0.97f
    .end array-data

    :array_54
    .array-data 4
        0x430f0000    # 143.0f
        0x3f333333    # 0.7f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_55
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4ccccd    # 0.8f
        0x3f7851ec    # 0.97f
    .end array-data

    :array_56
    .array-data 4
        0x43520000    # 210.0f
        0x3f70a3d7    # 0.94f
        0x3f800000    # 1.0f
    .end array-data

    :array_57
    .array-data 4
        0x43630000    # 227.0f
        0x3f6b851f    # 0.92f
        0x3f800000    # 1.0f
    .end array-data

    :array_58
    .array-data 4
        0x43870000    # 270.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_59
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_5a
    .array-data 4
        0x43a88000    # 337.0f
        0x3f3ae148    # 0.73f
        0x3f800000    # 1.0f
    .end array-data

    :array_5b
    .array-data 4
        0x0
        0x0
        0x3e99999a    # 0.3f
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3f68f5c3    # 0.91f
    .end array-data

    :array_5d
    .array-data 4
        0x41d00000    # 26.0f
        0x3f666666    # 0.9f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_5e
    .array-data 4
        0x42340000    # 45.0f
        0x3f800000    # 1.0f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_5f
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_60
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_61
    .array-data 4
        0x43100000    # 144.0f
        0x3f400000    # 0.75f
        0x3f5eb852    # 0.87f
    .end array-data

    :array_62
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4ccccd    # 0.8f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_63
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_64
    .array-data 4
        0x43630000    # 227.0f
        0x3f7851ec    # 0.97f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_65
    .array-data 4
        0x43870000    # 270.0f
        0x3f68f5c3    # 0.91f
        0x3f800000    # 1.0f
    .end array-data

    :array_66
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_67
    .array-data 4
        0x43a88000    # 337.0f
        0x3f400000    # 0.75f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x3e800000    # 0.25f
    .end array-data

    :array_69
    .array-data 4
        0x0
        0x3f6b851f    # 0.92f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_6a
    .array-data 4
        0x41d00000    # 26.0f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
    .end array-data

    :array_6b
    .array-data 4
        0x42340000    # 45.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_6c
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_6d
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3f59999a    # 0.85f
    .end array-data

    :array_6e
    .array-data 4
        0x43100000    # 144.0f
        0x3f400000    # 0.75f
        0x3f4f5c29    # 0.81f
    .end array-data

    :array_6f
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4ccccd    # 0.8f
        0x3f59999a    # 0.85f
    .end array-data

    :array_70
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_71
    .array-data 4
        0x43630000    # 227.0f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_72
    .array-data 4
        0x43870000    # 270.0f
        0x3f800000    # 1.0f
        0x3f6b851f    # 0.92f
    .end array-data

    :array_73
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3f59999a    # 0.85f
    .end array-data

    :array_74
    .array-data 4
        0x43a88000    # 337.0f
        0x3f4ccccd    # 0.8f
        0x3f59999a    # 0.85f
    .end array-data

    :array_75
    .array-data 4
        0x0
        0x0
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_77
    .array-data 4
        0x41d00000    # 26.0f
        0x3f666666    # 0.9f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_78
    .array-data 4
        0x42340000    # 45.0f
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_79
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_7a
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_7b
    .array-data 4
        0x430f0000    # 143.0f
        0x3f400000    # 0.75f
        0x3f30a3d7    # 0.69f
    .end array-data

    :array_7c
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4f5c29    # 0.81f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_7d
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_7e
    .array-data 4
        0x43630000    # 227.0f
        0x3f800000    # 1.0f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_7f
    .array-data 4
        0x43870000    # 270.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_80
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_81
    .array-data 4
        0x43a88000    # 337.0f
        0x3f4ccccd    # 0.8f
        0x3f3851ec    # 0.72f
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x0
        0x3e147ae1    # 0.145f
    .end array-data

    :array_83
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3f19999a    # 0.6f
    .end array-data

    :array_84
    .array-data 4
        0x41d00000    # 26.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_85
    .array-data 4
        0x42340000    # 45.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_86
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_87
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    :array_88
    .array-data 4
        0x43100000    # 144.0f
        0x3f400000    # 0.75f
        0x3f11eb85    # 0.57f
    .end array-data

    :array_89
    .array-data 4
        0x432b0000    # 171.0f
        0x3f4ccccd    # 0.8f
        0x3f147ae1    # 0.58f
    .end array-data

    :array_8a
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_8b
    .array-data 4
        0x43630000    # 227.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_8c
    .array-data 4
        0x43870000    # 270.0f
        0x3f800000    # 1.0f
        0x3f23d70a    # 0.64f
    .end array-data

    :array_8d
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3f266666    # 0.65f
    .end array-data

    :array_8e
    .array-data 4
        0x43a88000    # 337.0f
        0x3f4ccccd    # 0.8f
        0x3f1eb852    # 0.62f
    .end array-data

    :array_8f
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x3f6e147b    # 0.93f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_91
    .array-data 4
        0x41d00000    # 26.0f
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_92
    .array-data 4
        0x421c0000    # 39.0f
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_93
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_94
    .array-data 4
        0x42c40000    # 98.0f
        0x3f19999a    # 0.6f
        0x3ed70a3d    # 0.42f
    .end array-data

    :array_95
    .array-data 4
        0x43100000    # 144.0f
        0x3f400000    # 0.75f
        0x3ed1eb85    # 0.41f
    .end array-data

    :array_96
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4ccccd    # 0.8f
        0x3ec7ae14    # 0.39f
    .end array-data

    :array_97
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_98
    .array-data 4
        0x43630000    # 227.0f
        0x3f800000    # 1.0f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_99
    .array-data 4
        0x43870000    # 270.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_9a
    .array-data 4
        0x43970000    # 302.0f
        0x3f400000    # 0.75f
        0x3edc28f6    # 0.43f
    .end array-data

    :array_9b
    .array-data 4
        0x43a90000    # 338.0f
        0x3f4ccccd    # 0.8f
        0x3efae148    # 0.49f
    .end array-data

    :array_9c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_9d
    .array-data 4
        0x0
        0x3f70a3d7    # 0.94f
        0x3e800000    # 0.25f
    .end array-data

    :array_9e
    .array-data 4
        0x41d00000    # 26.0f
        0x3f800000    # 1.0f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_9f
    .array-data 4
        0x42200000    # 40.0f
        0x3f800000    # 1.0f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_a0
    .array-data 4
        0x42640000    # 57.0f
        0x3f800000    # 1.0f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_a1
    .array-data 4
        0x42c60000    # 99.0f
        0x3f1c28f6    # 0.61f
        0x3e947ae1    # 0.29f
    .end array-data

    :array_a2
    .array-data 4
        0x43100000    # 144.0f
        0x3f400000    # 0.75f
        0x3e8f5c29    # 0.28f
    .end array-data

    :array_a3
    .array-data 4
        0x432c0000    # 172.0f
        0x3f4f5c29    # 0.81f
        0x3e947ae1    # 0.29f
    .end array-data

    :array_a4
    .array-data 4
        0x43530000    # 211.0f
        0x3f800000    # 1.0f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_a5
    .array-data 4
        0x43640000    # 228.0f
        0x3f800000    # 1.0f
        0x3ea3d70a    # 0.32f
    .end array-data

    :array_a6
    .array-data 4
        0x43870000    # 270.0f
        0x3f800000    # 1.0f
        0x3ec28f5c    # 0.38f
    .end array-data

    :array_a7
    .array-data 4
        0x43970000    # 302.0f
        0x3f428f5c    # 0.76f
        0x3e947ae1    # 0.29f
    .end array-data

    :array_a8
    .array-data 4
        0x43a88000    # 337.0f
        0x3f4f5c29    # 0.81f
        0x3ebd70a4    # 0.37f
    .end array-data
.end method

.method private matchHsvColor([FZ)I
    .locals 11

    new-instance v0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;-><init>([F)V

    new-instance p1, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide v3, 0x4092c00000000000L    # 1200.0

    move v5, v1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mHSV2:[[F

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-object v7, v6, v5

    aget v7, v7, v1

    aget-object v8, v6, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v6, v6, v5

    const/4 v9, 0x2

    aget v6, v6, v9

    invoke-virtual {p1, v7, v8, v6}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->setColor(FFF)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;->getDistance(Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching$Point3;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_1

    if-eqz p2, :cond_0

    iput-wide v8, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedDistanceValue:D

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    cmpl-double v8, v3, v6

    if-lez v8, :cond_3

    if-eqz p2, :cond_2

    iput-wide v6, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedDistanceValue:D

    :cond_2
    move v2, v5

    move-wide v3, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    iput v2, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedIndex:I

    :cond_5
    return v2
.end method


# virtual methods
.method public clearMatchedData()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedIndex:I

    const-wide v0, 0x4092c00000000000L    # 1200.0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedDistanceValue:D

    return-void
.end method

.method public getMatchedColorIndex([F)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->matchHsvColor([FZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor() Not matchedIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenColorMatching"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return p1
.end method

.method public getResultColor([F)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mHSV2:[[F

    aget-object v0, v2, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public getResultIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedIndex:I

    return v0
.end method

.method public getResultValue()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mLastMatchedDistanceValue:D

    return-wide v0
.end method

.method public matchColor([F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->clearMatchedData()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->matchHsvColor([FZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchColor([F[F)Z
    .locals 6

    const-string v0, "SpenColorMatching"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->getMatchedColorIndex([F)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorMatching;->mHSV2:[[F

    aget-object v3, v3, v2

    const/4 v4, 0x3

    invoke-static {v3, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matchColor() index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " IN["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget p1, p1, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] -> OUT["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string p1, "Invalid input value."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
