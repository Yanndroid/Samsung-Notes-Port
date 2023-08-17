.class Lcom/samsung/vsf/util/DeviceInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/vsf/util/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/vsf/util/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/vsf/util/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/util/DeviceInfo$1;->this$0:Lcom/samsung/vsf/util/DeviceInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/vsf/util/DeviceInfo$1;->this$0:Lcom/samsung/vsf/util/DeviceInfo;

    invoke-static {p1}, Lcom/samsung/vsf/util/DeviceInfo;->access$100(Lcom/samsung/vsf/util/DeviceInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const-string v0, "True"

    const/4 v1, 0x5

    const-string v2, "False"

    if-ne p1, v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lcom/samsung/vsf/util/DeviceInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/vsf/util/DeviceInfo$1;->this$0:Lcom/samsung/vsf/util/DeviceInfo;

    invoke-static {p1}, Lcom/samsung/vsf/util/DeviceInfo;->access$100(Lcom/samsung/vsf/util/DeviceInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/vsf/util/DeviceInfo$1;->this$0:Lcom/samsung/vsf/util/DeviceInfo;

    invoke-static {p1}, Lcom/samsung/vsf/util/DeviceInfo;->access$100(Lcom/samsung/vsf/util/DeviceInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/samsung/vsf/util/DeviceInfo;->access$202(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
