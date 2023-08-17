.class public final enum Lorg/apache/poi/sl/usermodel/Placeholder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/Placeholder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CHART:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CLIP_ART:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum DGM:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum MEDIA:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum NONE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum PICTURE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SLIDE_IMAGE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum SUBTITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum TABLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_OBJECT:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_TEXT_BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

.field public static final enum VERTICAL_TEXT_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;


# instance fields
.field public final nativeNotesId:I

.field public final nativeNotesMasterId:I

.field public final nativeSlideId:I

.field public final nativeSlideMasterId:I

.field public final ooxmlId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    new-instance v8, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/Placeholder;->NONE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v10, "TITLE"

    const/4 v11, 0x1

    const/16 v12, 0xd

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v1, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v18, "BODY"

    const/16 v19, 0x2

    const/16 v20, 0xe

    const/16 v21, 0x2

    const/16 v22, 0xc

    const/16 v23, 0x6

    const/16 v24, 0x2

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v2, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v10, "CENTERED_TITLE"

    const/4 v11, 0x3

    const/16 v12, 0xf

    const/4 v13, 0x3

    const/4 v14, 0x3

    const/4 v15, 0x3

    const/16 v16, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v3, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v18, "SUBTITLE"

    const/16 v19, 0x4

    const/16 v20, 0x10

    const/16 v21, 0x4

    const/16 v22, 0x4

    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/Placeholder;->SUBTITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v4, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v10, "DATETIME"

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x7

    const/4 v14, 0x7

    const/4 v15, 0x7

    const/16 v16, 0x5

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v5, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v18, "SLIDE_NUMBER"

    const/16 v19, 0x6

    const/16 v20, 0x8

    const/16 v21, 0x8

    const/16 v22, 0x8

    const/16 v23, 0x8

    const/16 v24, 0x6

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/Placeholder;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v6, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v10, "FOOTER"

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/16 v13, 0x9

    const/16 v14, 0x9

    const/16 v15, 0x9

    const/16 v16, 0x7

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/Placeholder;->FOOTER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v7, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v18, "HEADER"

    const/16 v19, 0x8

    const/16 v20, 0xa

    const/16 v21, 0xa

    const/16 v22, 0xa

    const/16 v23, 0xa

    const/16 v24, 0x8

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/Placeholder;->HEADER:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v17, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v10, "CONTENT"

    const/16 v11, 0x9

    const/16 v12, 0x13

    const/16 v13, 0x13

    const/16 v14, 0x13

    const/16 v15, 0x13

    const/16 v16, 0x9

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v17, Lorg/apache/poi/sl/usermodel/Placeholder;->CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v9, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v19, "CHART"

    const/16 v21, 0x14

    const/16 v22, 0x14

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0xa

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/Placeholder;->CHART:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v10, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v27, "TABLE"

    const/16 v28, 0xb

    const/16 v29, 0x15

    const/16 v30, 0x15

    const/16 v31, 0x15

    const/16 v32, 0x15

    const/16 v33, 0xb

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/Placeholder;->TABLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v11, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v19, "CLIP_ART"

    const/16 v20, 0xc

    const/16 v21, 0x16

    const/16 v22, 0x16

    const/16 v23, 0x16

    const/16 v24, 0x16

    const/16 v25, 0xc

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/Placeholder;->CLIP_ART:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v12, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v27, "DGM"

    const/16 v28, 0xd

    const/16 v29, 0x17

    const/16 v30, 0x17

    const/16 v31, 0x17

    const/16 v32, 0x17

    const/16 v33, 0xd

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/Placeholder;->DGM:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v13, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v19, "MEDIA"

    const/16 v20, 0xe

    const/16 v21, 0x18

    const/16 v22, 0x18

    const/16 v23, 0x18

    const/16 v24, 0x18

    const/16 v25, 0xe

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/Placeholder;->MEDIA:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v14, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v27, "SLIDE_IMAGE"

    const/16 v28, 0xf

    const/16 v29, 0xb

    const/16 v30, 0xb

    const/16 v31, 0xb

    const/16 v32, 0x5

    const/16 v33, 0xf

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v33}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/Placeholder;->SLIDE_IMAGE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v15, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v19, "PICTURE"

    const/16 v20, 0x10

    const/16 v21, 0x1a

    const/16 v22, 0x1a

    const/16 v23, 0x1a

    const/16 v24, 0x1a

    const/16 v25, 0x10

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v15, Lorg/apache/poi/sl/usermodel/Placeholder;->PICTURE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v16, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v27, "VERTICAL_OBJECT"

    const/16 v28, 0x11

    const/16 v29, 0x19

    const/16 v30, 0x19

    const/16 v31, 0x19

    const/16 v32, 0x19

    const/16 v33, -0x2

    move-object/from16 v26, v16

    invoke-direct/range {v26 .. v33}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v16, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_OBJECT:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v26, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v19, "VERTICAL_TEXT_TITLE"

    const/16 v20, 0x12

    const/16 v21, 0x11

    const/16 v22, 0x11

    const/16 v23, 0x11

    const/16 v24, 0x11

    const/16 v25, -0x2

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v25}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v26, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_TEXT_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    new-instance v18, Lorg/apache/poi/sl/usermodel/Placeholder;

    const-string v28, "VERTICAL_TEXT_BODY"

    const/16 v29, 0x13

    const/16 v30, 0x12

    const/16 v31, 0x12

    const/16 v32, 0x12

    const/16 v33, 0x12

    const/16 v34, -0x2

    move-object/from16 v27, v18

    invoke-direct/range {v27 .. v34}, Lorg/apache/poi/sl/usermodel/Placeholder;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v18, Lorg/apache/poi/sl/usermodel/Placeholder;->VERTICAL_TEXT_BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    move-object/from16 v19, v15

    const/16 v15, 0x14

    new-array v15, v15, [Lorg/apache/poi/sl/usermodel/Placeholder;

    const/16 v20, 0x0

    aput-object v8, v15, v20

    const/4 v8, 0x1

    aput-object v0, v15, v8

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v17, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v19, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v26, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    sput-object v15, Lorg/apache/poi/sl/usermodel/Placeholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideMasterId:I

    iput p5, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesId:I

    iput p6, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesMasterId:I

    iput p7, p0, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    return-void
.end method

.method private static lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/Placeholder;->values()[Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideId:I

    if-eq v4, p0, :cond_3

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideMasterId:I

    if-eq v4, p0, :cond_3

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesId:I

    if-eq v4, p0, :cond_3

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesMasterId:I

    if-ne v4, p0, :cond_4

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static lookupNativeNotes(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeNotesMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeSlide(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupNativeSlideMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNative(II)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public static lookupOoxml(I)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/Placeholder;->values()[Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/Placeholder;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->$VALUES:[Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/Placeholder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object v0
.end method
