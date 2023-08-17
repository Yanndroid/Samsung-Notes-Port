.class Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncSettingIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/String;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;


# direct methods
.method private constructor <init>(Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;-><init>(Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent - authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.GALLERY_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.app.activity.LAUNCH_OTHER_PHONE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "com.samsung.android.scloud"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "authority"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;->apply(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
