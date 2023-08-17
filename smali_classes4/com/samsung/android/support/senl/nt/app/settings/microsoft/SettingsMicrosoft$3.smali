.class Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/ISingleAccountPublicClientApplication$SignOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->signOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/client/exception/MsalException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSAL error signing out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsMicrosoft"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    const/4 v0, 0x0

    const-string v1, "Singed out"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    return-void
.end method

.method public onSignOut()V
    .locals 3

    const-string v0, "SettingsMicrosoft"

    const-string v1, "Signed out"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    const/4 v1, 0x0

    const-string v2, "Singed out"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->c(Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;ZLjava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    return-void
.end method
