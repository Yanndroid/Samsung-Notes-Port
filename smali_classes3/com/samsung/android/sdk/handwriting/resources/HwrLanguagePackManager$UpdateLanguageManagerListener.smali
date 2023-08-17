.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateLanguageManagerListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string/jumbo v2, "update failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    return-void

    :cond_1
    const-string/jumbo v2, "update success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200()Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "update error : mLanguageManager is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200()Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200()Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400()Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200()Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setLanguagePack(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-static {v3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$302(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    return-void
.end method
