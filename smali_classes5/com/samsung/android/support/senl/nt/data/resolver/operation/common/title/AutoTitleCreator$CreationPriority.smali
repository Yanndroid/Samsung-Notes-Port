.class public final enum Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum AUDIO:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum DRAWING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum IMAGE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum LINK:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum MATH:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum PDF:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum RECORDING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum TABLE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

.field public static final enum WEB:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;


# instance fields
.field private final mCreator:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator<",
            "+",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/PdfTitleCreator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/PdfTitleCreator;-><init>()V

    const-string v2, "PDF"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->PDF:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/WebCardTitleCreator;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/WebCardTitleCreator;-><init>()V

    const-string v4, "WEB"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->WEB:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AudioTitleCreator;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AudioTitleCreator;-><init>()V

    const-string v6, "AUDIO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->AUDIO:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/RecordingTitleCreator;-><init>()V

    const-string v8, "RECORDING"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->RECORDING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v8, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/DrawingTitleCreator;

    invoke-direct {v8}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/DrawingTitleCreator;-><init>()V

    const-string v10, "DRAWING"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->DRAWING:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v8, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v10, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;-><init>()V

    const-string v12, "MATH"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->MATH:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v10, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v12, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/TableTitleCreator;

    invoke-direct {v12}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/TableTitleCreator;-><init>()V

    const-string v14, "TABLE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v10, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->TABLE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v12, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v14, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ImageTitleCreator;

    invoke-direct {v14}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/ImageTitleCreator;-><init>()V

    const-string v15, "IMAGE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v12, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->IMAGE:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v14, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    new-instance v15, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/LinkTitleCreator;

    invoke-direct {v15}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/LinkTitleCreator;-><init>()V

    const-string v13, "LINK"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;-><init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->LINK:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator<",
            "+",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->mCreator:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;

    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->values()[Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->mCreator:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->apply(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
