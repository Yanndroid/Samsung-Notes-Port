.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadSizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LanguagePackDownloadSizeListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V

    return-void
.end method


# virtual methods
.method public onDownloadSize(J)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;->onDownloadSize(J)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadSizeListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadSizeListener;

    return-void
.end method
