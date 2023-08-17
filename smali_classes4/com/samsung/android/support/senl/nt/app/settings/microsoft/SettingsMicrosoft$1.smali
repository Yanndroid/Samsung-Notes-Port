.class Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->executeSignInAfterAuthInit()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->signIn()Z

    return-void
.end method
