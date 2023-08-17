.class public Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pass/SpassFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientSpecBuilder"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const-string v1, "sdk_version"

    const-string v2, "Pass-v1.2.8"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "samsung-hidden-pay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "privileged_attr"

    const-string v2, "privileged"

    const-string/jumbo v3, "useManualTimeout"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const v0, -0x7ffffffe

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "samsung-hidden-common"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowFingers([I)Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const-string v1, "request_template_index_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-object p0
.end method

.method public setExtraSpec(Landroid/os/Bundle;)Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPrivilegedAttr(I)Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const-string v1, "privileged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$ClientSpecBuilder;->a:Landroid/os/Bundle;

    const-string v1, "privileged_attr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
