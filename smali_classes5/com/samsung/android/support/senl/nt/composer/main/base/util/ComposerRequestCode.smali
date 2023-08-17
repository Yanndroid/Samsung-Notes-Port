.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum AddPageTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum AudioADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum AudioAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum BrushDrawing:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum Camera:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum CategoryChooser:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum ChangeTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum CompareConflict:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum DocumentScan:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum Export:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum Gallery:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum HashTag:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum ImageEditor:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum InAppCollaborationFTU:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum LeaveCoedit:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum LockDocument:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum PDFChooser:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum ProcessText:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum ShareVia:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum StartCoedit:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum TextADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum TextAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

.field public static final enum UpdateDocumentLockPassword:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v3, "Camera"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->Camera:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v5, "Gallery"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->Gallery:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v7, "PDFChooser"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->PDFChooser:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v9, "CategoryChooser"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->CategoryChooser:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v11, "LockDocument"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->LockDocument:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v11, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v13, "UpdateDocumentLockPassword"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->UpdateDocumentLockPassword:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v13, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v15, "ShareVia"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ShareVia:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v15, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v14, "Export"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->Export:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v14, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v12, "BrushDrawing"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->BrushDrawing:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v10, "AudioAddByMyFiles"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->AudioAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v8, "AudioADD"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->AudioADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v6, "TextAddByMyFiles"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->TextAddByMyFiles:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v4, "TextADD"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->TextADD:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v2, "HashTag"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->HashTag:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v6, "ChangeTemplate"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ChangeTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v4, "DocumentScan"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->DocumentScan:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v2, "AddPageTemplate"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->AddPageTemplate:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v6, "InAppCollaborationFTU"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->InAppCollaborationFTU:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v4, "ImageEditor"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ImageEditor:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v2, "StartCoedit"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->StartCoedit:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v6, "LeaveCoedit"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->LeaveCoedit:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v4, "ProcessText"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ProcessText:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const-string v4, "CompareConflict"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->CompareConflict:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->values()[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    return v0
.end method
