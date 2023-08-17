.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwSpenObjectSelectListenerImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PwSpenObjectSelectListenerImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwSpenObjectSelectListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwSpenObjectSelectListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextStateHandler;)V

    return-void
.end method


# virtual methods
.method public onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->onObjectSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenObjectSelectListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/composer/PwComposerViewPresenter$PwSpenObjectSelectListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onObjectSelected#"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
