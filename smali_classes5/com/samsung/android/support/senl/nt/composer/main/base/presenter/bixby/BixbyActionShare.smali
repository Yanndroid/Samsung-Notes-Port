.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;-><init>()V

    const-string v0, "BixbyActionShare"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->TAG:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->mShareType:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_2

    :cond_0
    const-string v0, "SDOC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->SDOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_0

    :cond_1
    const-string v0, "PDF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PDF:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_0

    :cond_2
    const-string v0, "Image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->IMAGE:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_0

    :cond_3
    const-string v0, "TextOnly"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "DOC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->DOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->TEXT:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionShare;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
