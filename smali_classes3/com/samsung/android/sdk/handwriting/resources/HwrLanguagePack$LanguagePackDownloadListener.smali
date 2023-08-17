.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LanguagePackDownloadListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onComplete] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " download complete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onComplete] mDownloadInProgressDownloadQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v3, "[onComplete] success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V

    goto :goto_0

    :cond_0
    const-string v3, "[onComplete] failed or canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v3

    invoke-static {v2, v3, v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZI)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$702(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->cancelDownload(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->finishDownload(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$502(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$802(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;->onComplete(I)V

    :cond_3
    return-void
.end method

.method public onProgress(II)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%, max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result p2

    const/16 v0, 0x64

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;->onProgress(II)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;

    return-void
.end method
