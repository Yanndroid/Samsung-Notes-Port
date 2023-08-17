.class Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess, result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsMicrosoft"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->R(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->a(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->a(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;->onEnable(Z)V

    :cond_0
    return-void
.end method
