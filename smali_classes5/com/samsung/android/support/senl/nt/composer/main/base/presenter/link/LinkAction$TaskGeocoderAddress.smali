.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskGeocoderAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Landroid/location/Address;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/AddressHelper;->findAddressByGeocoder(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;->doInBackground([Ljava/lang/String;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/location/Address;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/AddressHelper;->normalAddressText(Landroid/location/Address;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/UriLinkHelper;->makeMapUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/IntentUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/link/LinkAction$TaskGeocoderAddress;->onPostExecute(Landroid/location/Address;)V

    return-void
.end method
