.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INCORRECT_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NT$NetworkConnectionFailedType"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

.field private static mResIdMapBody:Landroid/util/SparseIntArray;

.field private static mResIdMapTitle:Landroid/util/SparseIntArray;

.field private static mResIdMapToast:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_wifi_not_available_title_chn:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_wifi_not_available_title:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_flight_mode_title:I

    const/16 v3, 0x65

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_turned_off_title:I

    const/16 v4, 0x66

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_data_roaming_is_off_title:I

    const/16 v5, 0x67

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_data_reached_to_limit_title:I

    const/16 v6, 0x68

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_roam_data_warning_title:I

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_title:I

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    const/16 v2, 0x63

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_wifi_not_available_body_chn:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_flight_mode_body_chn:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_turned_off_body_chn:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_data_roaming_is_off_body_chn:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body_chn:I

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_toast_wifi_connection_failed_chn:I

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_wifi_not_available_body:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_flight_mode_body_tablet:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_flight_mode_body:I

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_turned_off_body:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_data_roaming_is_off_body:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body_tablet:I

    goto :goto_3

    :cond_3
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body:I

    :goto_3
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_toast_wifi_connection_failed:I

    goto :goto_1

    :goto_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_data_reached_to_limit_body:I

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_roam_data_warning_body:I

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_toast_flight_mode:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_toast_mobile_data_turned_off:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_toast_roaming_is_off:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    :cond_0
    return-object v0
.end method

.method public static getResIdBody(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapBody:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static getResIdTitle(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapTitle:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static getResIdToast(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->mResIdMapToast:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method
