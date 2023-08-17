.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mShareUriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;->mShareUriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    return-void
.end method


# virtual methods
.method public handleVoiceContent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;->mShareUriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    const-string v5, "audio/mp4"

    move v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public handleVoiceData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getAttachedFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/HandleVoice;->mShareUriHelper:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    const-string v5, "audio/mp4"

    move v1, p4

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
