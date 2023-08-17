.class public final enum Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkWith"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum ALL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum DEFAULT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum MEDIA:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum PDF_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum TAG:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum TEXT_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

.field public static final enum TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v1, "TEXT_SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TEXT_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v4, "OBJECT_RECOGNITION"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v4, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v6, "MEDIA"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->MEDIA:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v8, "TAG"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TAG:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v8, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v11, "TITLE"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v11, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v12, "PDF_SEARCH"

    const/4 v13, 0x5

    const/16 v14, 0x20

    invoke-direct {v11, v12, v13, v14}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->PDF_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v12, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v14, "DEFAULT"

    const/4 v15, 0x6

    const/16 v13, 0x2f

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->DEFAULT:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-instance v13, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    const-string v14, "ALL"

    const/4 v15, 0x7

    const/16 v7, 0x3f

    invoke-direct {v13, v14, v15, v7}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->ALL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    new-array v7, v10, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v11, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    aput-object v13, v7, v15

    sput-object v7, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->value:I

    return v0
.end method
