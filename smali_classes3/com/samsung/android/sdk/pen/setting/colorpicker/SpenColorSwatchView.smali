.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewInterface;
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$ActionListener;
    }
.end annotation


# static fields
.field private static final DARK_COLOR_NAME_IDX:I = 0x2

.field private static final LIGHT_COLOR_NAME_IDX:I = 0x1

.field private static final STANDARD_DARK_ROW:I = 0x7

.field private static final STANDARD_LIGHT_ROW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SpenColorSwatchView"


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mColorID:[[I

.field private mColumNum:I

.field private mCurrentHoverPosition:I

.field private mCurrentPosition:I

.field private mDrawRect:Landroid/graphics/Rect;

.field private mHSV:[[F

.field private mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

.field private mIsTouchInArea:Z

.field private mItemLayoutID:I

.field private mLastCenterX:I

.field private mLastPosIndex:I

.field private mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

.field private mReqPosIndex:I

.field private mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

.field private mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

.field private final mSwatchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSwatchItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwatchStartMargin:I

.field private mSwatchTopMargin:I

.field private mSwatchView:Landroid/widget/GridView;

.field private mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 17

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentHoverPosition:I

    iput v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    iput v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastPosIndex:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastCenterX:I

    const/16 v1, 0xa9

    new-array v1, v1, [[F

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [F

    fill-array-data v3, :array_9

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-array v3, v2, [F

    fill-array-data v3, :array_a

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-array v3, v2, [F

    fill-array-data v3, :array_b

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-array v3, v2, [F

    fill-array-data v3, :array_c

    const/16 v15, 0xc

    aput-object v3, v1, v15

    new-array v3, v2, [F

    fill-array-data v3, :array_d

    const/16 v15, 0xd

    aput-object v3, v1, v15

    new-array v3, v2, [F

    fill-array-data v3, :array_e

    const/16 v16, 0xe

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_f

    const/16 v16, 0xf

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_10

    const/16 v16, 0x10

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_11

    const/16 v16, 0x11

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_12

    const/16 v16, 0x12

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_13

    const/16 v16, 0x13

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_14

    const/16 v16, 0x14

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_15

    const/16 v16, 0x15

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_16

    const/16 v16, 0x16

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_17

    const/16 v16, 0x17

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_18

    const/16 v16, 0x18

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_19

    const/16 v16, 0x19

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1a

    const/16 v16, 0x1a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1b

    const/16 v16, 0x1b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1c

    const/16 v16, 0x1c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1d

    const/16 v16, 0x1d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1e

    const/16 v16, 0x1e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_1f

    const/16 v16, 0x1f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_20

    const/16 v16, 0x20

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_21

    const/16 v16, 0x21

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_22

    const/16 v16, 0x22

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_23

    const/16 v16, 0x23

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_24

    const/16 v16, 0x24

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_25

    const/16 v16, 0x25

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_26

    const/16 v16, 0x26

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_27

    const/16 v16, 0x27

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_28

    const/16 v16, 0x28

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_29

    const/16 v16, 0x29

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2a

    const/16 v16, 0x2a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2b

    const/16 v16, 0x2b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2c

    const/16 v16, 0x2c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2d

    const/16 v16, 0x2d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2e

    const/16 v16, 0x2e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_2f

    const/16 v16, 0x2f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_30

    const/16 v16, 0x30

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_31

    const/16 v16, 0x31

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_32

    const/16 v16, 0x32

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_33

    const/16 v16, 0x33

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_34

    const/16 v16, 0x34

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_35

    const/16 v16, 0x35

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_36

    const/16 v16, 0x36

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_37

    const/16 v16, 0x37

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_38

    const/16 v16, 0x38

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_39

    const/16 v16, 0x39

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3a

    const/16 v16, 0x3a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3b

    const/16 v16, 0x3b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3c

    const/16 v16, 0x3c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3d

    const/16 v16, 0x3d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3e

    const/16 v16, 0x3e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_3f

    const/16 v16, 0x3f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_40

    const/16 v16, 0x40

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_41

    const/16 v16, 0x41

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_42

    const/16 v16, 0x42

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_43

    const/16 v16, 0x43

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_44

    const/16 v16, 0x44

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_45

    const/16 v16, 0x45

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_46

    const/16 v16, 0x46

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_47

    const/16 v16, 0x47

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_48

    const/16 v16, 0x48

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_49

    const/16 v16, 0x49

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4a

    const/16 v16, 0x4a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4b

    const/16 v16, 0x4b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4c

    const/16 v16, 0x4c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4d

    const/16 v16, 0x4d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4e

    const/16 v16, 0x4e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_4f

    const/16 v16, 0x4f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_50

    const/16 v16, 0x50

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_51

    const/16 v16, 0x51

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_52

    const/16 v16, 0x52

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_53

    const/16 v16, 0x53

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_54

    const/16 v16, 0x54

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_55

    const/16 v16, 0x55

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_56

    const/16 v16, 0x56

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_57

    const/16 v16, 0x57

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_58

    const/16 v16, 0x58

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_59

    const/16 v16, 0x59

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5a

    const/16 v16, 0x5a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5b

    const/16 v16, 0x5b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5c

    const/16 v16, 0x5c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5d

    const/16 v16, 0x5d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5e

    const/16 v16, 0x5e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_5f

    const/16 v16, 0x5f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_60

    const/16 v16, 0x60

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_61

    const/16 v16, 0x61

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_62

    const/16 v16, 0x62

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_63

    const/16 v16, 0x63

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_64

    const/16 v16, 0x64

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_65

    const/16 v16, 0x65

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_66

    const/16 v16, 0x66

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_67

    const/16 v16, 0x67

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_68

    const/16 v16, 0x68

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_69

    const/16 v16, 0x69

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6a

    const/16 v16, 0x6a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6b

    const/16 v16, 0x6b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6c

    const/16 v16, 0x6c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6d

    const/16 v16, 0x6d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6e

    const/16 v16, 0x6e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_6f

    const/16 v16, 0x6f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_70

    const/16 v16, 0x70

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_71

    const/16 v16, 0x71

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_72

    const/16 v16, 0x72

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_73

    const/16 v16, 0x73

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_74

    const/16 v16, 0x74

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_75

    const/16 v16, 0x75

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_76

    const/16 v16, 0x76

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_77

    const/16 v16, 0x77

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_78

    const/16 v16, 0x78

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_79

    const/16 v16, 0x79

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7a

    const/16 v16, 0x7a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7b

    const/16 v16, 0x7b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7c

    const/16 v16, 0x7c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7d

    const/16 v16, 0x7d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7e

    const/16 v16, 0x7e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_7f

    const/16 v16, 0x7f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_80

    const/16 v16, 0x80

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_81

    const/16 v16, 0x81

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_82

    const/16 v16, 0x82

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_83

    const/16 v16, 0x83

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_84

    const/16 v16, 0x84

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_85

    const/16 v16, 0x85

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_86

    const/16 v16, 0x86

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_87

    const/16 v16, 0x87

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_88

    const/16 v16, 0x88

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_89

    const/16 v16, 0x89

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8a

    const/16 v16, 0x8a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8b

    const/16 v16, 0x8b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8c

    const/16 v16, 0x8c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8d

    const/16 v16, 0x8d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8e

    const/16 v16, 0x8e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_8f

    const/16 v16, 0x8f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_90

    const/16 v16, 0x90

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_91

    const/16 v16, 0x91

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_92

    const/16 v16, 0x92

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_93

    const/16 v16, 0x93

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_94

    const/16 v16, 0x94

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_95

    const/16 v16, 0x95

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_96

    const/16 v16, 0x96

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_97

    const/16 v16, 0x97

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_98

    const/16 v16, 0x98

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_99

    const/16 v16, 0x99

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9a

    const/16 v16, 0x9a

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9b

    const/16 v16, 0x9b

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9c

    const/16 v16, 0x9c

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9d

    const/16 v16, 0x9d

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9e

    const/16 v16, 0x9e

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_9f

    const/16 v16, 0x9f

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a0

    const/16 v16, 0xa0

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a1

    const/16 v16, 0xa1

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a2

    const/16 v16, 0xa2

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a3

    const/16 v16, 0xa3

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a4

    const/16 v16, 0xa4

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a5

    const/16 v16, 0xa5

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a6

    const/16 v16, 0xa6

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a7

    const/16 v16, 0xa7

    aput-object v3, v1, v16

    new-array v3, v2, [F

    fill-array-data v3, :array_a8

    const/16 v16, 0xa8

    aput-object v3, v1, v16

    iput-object v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHSV:[[F

    new-array v1, v15, [[I

    new-array v3, v2, [I

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_gray:I

    aput v15, v3, v0

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_light_gray:I

    aput v15, v3, v4

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_dark_gray:I

    aput v15, v3, v5

    aput-object v3, v1, v0

    new-array v3, v2, [I

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_red:I

    aput v15, v3, v0

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_red:I

    aput v15, v3, v4

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_red:I

    aput v15, v3, v5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_orange:I

    aput v15, v3, v0

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_orange:I

    aput v15, v3, v4

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_orange:I

    aput v15, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_gold:I

    aput v15, v3, v0

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_gold:I

    aput v15, v3, v4

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_gold:I

    aput v15, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_yellow:I

    aput v15, v3, v0

    sget v15, Lcom/samsung/android/spen/R$string;->pen_palette_color_light_yellow:I

    aput v15, v3, v4

    sget v15, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_yellow:I

    aput v15, v3, v5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_green:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_light_green:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_dark_green:I

    aput v7, v3, v5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_spring_green:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_spring_green:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_spring_green:I

    aput v7, v3, v5

    aput-object v3, v1, v9

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_cyan:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_cyan:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_cyan:I

    aput v7, v3, v5

    aput-object v3, v1, v10

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_azure:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_azure:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_azure:I

    aput v7, v3, v5

    aput-object v3, v1, v11

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_blue:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_blue:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_blue:I

    aput v7, v3, v5

    aput-object v3, v1, v12

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_palette_color_violet:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_violet:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_violet:I

    aput v7, v3, v5

    aput-object v3, v1, v13

    new-array v3, v2, [I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_magenta:I

    aput v7, v3, v0

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_magenta:I

    aput v7, v3, v4

    sget v7, Lcom/samsung/android/spen/R$string;->pen_swatch_color_dark_magenta:I

    aput v7, v3, v5

    aput-object v3, v1, v14

    new-array v2, v2, [I

    sget v3, Lcom/samsung/android/spen/R$string;->pen_swatch_color_pink:I

    aput v3, v2, v0

    sget v0, Lcom/samsung/android/spen/R$string;->pen_swatch_color_light_pink:I

    aput v0, v2, v4

    sget v0, Lcom/samsung/android/spen/R$string;->pen_palette_color_dark_pink:I

    aput v0, v2, v5

    const/16 v0, 0xc

    aput-object v2, v1, v0

    iput-object v1, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mColorID:[[I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;

    invoke-direct {v0, v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$2;

    invoke-direct {v0, v6}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mDrawRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    iput v0, v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mItemLayoutID:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->construct(Landroid/content/Context;IIII)V

    return-void

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

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->releaseDetected()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updateFloatingView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mDrawRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->releaseBackgroundObserver()V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updatePosition(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastPosIndex:I

    return p0
.end method

.method public static synthetic access$602(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastPosIndex:I

    return p1
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastCenterX:I

    return p0
.end method

.method public static synthetic access$702(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastCenterX:I

    return p1
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    return-object p0
.end method

.method private construct(Landroid/content/Context;IIII)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$integer;->setting_color_picker_column_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mColumNum:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchStartMargin:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchTopMargin:I

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/spen/R$layout;->setting_color_swatch_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setClipToOutline(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {p0, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    sget p3, Lcom/samsung/android/spen/R$drawable;->setting_color_swatch_selected_layout_background:I

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_selector_elevation:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setElevation(F)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->initSwatchList(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->initSwatchViewOutline()V

    return-void
.end method

.method private findMatchedSwatch(FFF)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    if-eqz p2, :cond_1

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->getColor()I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private getChildRect(I)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getColorName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mColumNum:I

    sub-int/2addr v2, v0

    if-ne p2, v2, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$string;->pen_palette_color_black:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mColorID:[[I

    aget-object p2, p2, p3

    aget p2, p2, v1

    goto :goto_1
.end method

.method private initHoverView()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$drawable;->setting_color_swatch_hover_layout_background:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_color_picker_hover_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initSwatchList(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHSV:[[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mColumNum:I

    div-int v5, v2, v4

    rem-int v4, v2, v4

    new-instance v6, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;

    aget-object v7, v3, v2

    aget v7, v7, v1

    aget-object v8, v3, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    aget-object v3, v3, v2

    const/4 v9, 0x2

    aget v3, v3, v9

    invoke-direct {v6, v7, v8, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;-><init>(FFF)V

    invoke-direct {p0, p1, v5, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->getColorName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchItem;->setVoiceAssistant(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mItemLayoutID:I

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSwatchList() tableSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorSwatchView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSwatchViewOutline()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mDrawRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$4;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method private needUpdate(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needUpdate() pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSwatchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$3;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private notifyColorChanged(I)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorSelected() position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSwatchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHSV:[[F

    aget-object v3, v2, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v0, v4

    aget-object v3, v2, p1

    const/4 v5, 0x1

    aget v3, v3, v5

    aput v3, v0, v5

    aget-object p1, v2, p1

    const/4 v2, 0x2

    aget p1, p1, v2

    aput p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyColorChanged() ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v5

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const/16 v8, 0xff

    aget v9, v0, v4

    aget v10, v0, v5

    aget v11, v0, v2

    const-string v7, "SpenColorSwatchView"

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->setColor(Ljava/lang/String;IFFF)V

    :cond_0
    return-void
.end method

.method private releaseBackgroundObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewBackgroundObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private releaseDetected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    const-string v0, "SpenColorSwatchView"

    const-string v1, "releaseDetected() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastPosIndex:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mLastCenterX:I

    :cond_0
    return-void
.end method

.method private setColor(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->findMatchedSwatch(FFF)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->setSelectedPosition(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchViewObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mReqPosIndex:I

    :cond_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->needUpdate(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentPosition:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updateFloatingView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFloatingView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFloatingView() pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorSwatchView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->getChildRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchStartMargin:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchTopMargin:I

    invoke-virtual {p1, v2, v1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;->updateView(Landroid/graphics/Rect;II)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;->updateColor(I)V

    return v0

    :cond_2
    :goto_0
    const-string p1, " child is null. so return."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private updatePosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;->setSelectedPosition(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->notifyColorChanged(I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentPosition:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updateFloatingView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->initHoverView()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchStartMargin:I

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchTopMargin:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentHoverPosition:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    :cond_4
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentHoverPosition:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updateFloatingView(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;I)Z

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mIsTouchInArea:Z

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mIsTouchInArea:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mIsTouchInArea:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;->onTouchUp()V

    :cond_2
    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mIsTouchInArea:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mIsTouchInArea:Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->releaseDetected()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchStartMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchTopMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mCurrentPosition:I

    if-eq v0, v3, :cond_6

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->updatePosition(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;->onTouchUp()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    :goto_0
    return v1
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->releaseDetected()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->removeEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->releaseBackgroundObserver()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchView:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchAdapter:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSwatchItemList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mHoverView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mSelectedView:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchFloatingView;

    return-void
.end method

.method public setPickerColor(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->getColor([F)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->setColor(FFF)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mPickerColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->addEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setTouchUpListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->mTouchUpListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    return-void
.end method

.method public update(Ljava/lang/String;IFFF)V
    .locals 3

    const-string v0, "SpenColorSwatchView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update() who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", color="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->setColor(FFF)V

    return-void
.end method
