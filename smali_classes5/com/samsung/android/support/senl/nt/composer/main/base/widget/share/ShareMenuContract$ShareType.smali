.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum DOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum IMAGE:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum PDF:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum PPTX:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum SDOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

.field public static final enum TEXT:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;


# instance fields
.field public resId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_sdoc_jp:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_sdoc:I

    :goto_0
    const-string v2, "SDOC"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->SDOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_pdf:I

    const-string v4, "PDF"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PDF:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_doc:I

    const-string v6, "DOC"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->DOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_pptx:I

    const-string v8, "PPTX"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PPTX:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    sget v8, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_image:I

    const-string v10, "IMAGE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->IMAGE:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    sget v10, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_text_only:I

    const-string v12, "TEXT"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->TEXT:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

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

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    return-object v0
.end method
