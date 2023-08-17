.class Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

.field public final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inner update result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->getLanguagePacks()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$102(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$302(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$402(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isDownloaded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$300(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installed Language list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->isInstallable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloadable Language list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguageManager$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    :cond_5
    return-void
.end method
