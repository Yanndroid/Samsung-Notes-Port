.class public final enum Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineDash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I

.field public final pattern:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const-string v1, "SOLID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v1, 0x2

    new-array v12, v1, [I

    fill-array-data v12, :array_0

    const-string v8, "DOT"

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    const-string v14, "DASH"

    const/4 v15, 0x2

    const/16 v16, 0x7

    const/16 v17, 0x3

    move-object v13, v2

    move-object/from16 v18, v3

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v4, 0x4

    new-array v12, v4, [I

    fill-array-data v12, :array_2

    const-string v8, "DASH_DOT"

    const/4 v9, 0x3

    const/16 v10, 0x9

    const/4 v11, 0x5

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v5, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v7, v1, [I

    fill-array-data v7, :array_3

    const-string v14, "LG_DASH"

    const/4 v15, 0x4

    const/16 v16, 0x8

    const/16 v17, 0x4

    move-object v13, v5

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v13, v4, [I

    fill-array-data v13, :array_4

    const-string v9, "LG_DASH_DOT"

    const/4 v10, 0x5

    const/16 v11, 0xa

    const/4 v12, 0x6

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_5

    const-string v15, "LG_DASH_DOT_DOT"

    const/16 v16, 0x6

    const/16 v17, 0xb

    const/16 v18, 0x7

    move-object v14, v8

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v10, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v11, v1, [I

    fill-array-data v11, :array_6

    const-string v20, "SYS_DASH"

    const/16 v21, 0x7

    const/16 v22, 0x2

    const/16 v23, 0x8

    move-object/from16 v19, v10

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v11, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v15, v1, [I

    fill-array-data v15, :array_7

    const-string v13, "SYS_DOT"

    const/16 v14, 0x8

    const/16 v16, 0x3

    const/16 v17, 0x9

    move-object v12, v11

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v12, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v13, v4, [I

    fill-array-data v13, :array_8

    const-string v20, "SYS_DASH_DOT"

    const/16 v21, 0x9

    const/16 v22, 0x4

    const/16 v23, 0xa

    move-object/from16 v19, v12

    move-object/from16 v24, v13

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v13, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v15, v9, [I

    fill-array-data v15, :array_9

    const-string v16, "SYS_DASH_DOT_DOT"

    const/16 v17, 0xa

    const/16 v18, 0x5

    const/16 v19, 0xb

    move-object v14, v13

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v14, 0xb

    new-array v14, v14, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v0, v14, v6

    aput-object v2, v14, v1

    const/4 v0, 0x3

    aput-object v3, v14, v0

    aput-object v5, v14, v4

    const/4 v0, 0x5

    aput-object v7, v14, v0

    aput-object v8, v14, v9

    const/4 v0, 0x7

    aput-object v10, v14, v0

    const/16 v0, 0x8

    aput-object v11, v14, v0

    const/16 v0, 0x9

    aput-object v12, v14, v0

    const/16 v0, 0xa

    aput-object v13, v14, v0

    sput-object v14, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x3
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x3
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;III[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    if-eqz p5, :cond_0

    array-length p1, p5

    if-nez p1, :cond_1

    :cond_0
    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-object v0
.end method
