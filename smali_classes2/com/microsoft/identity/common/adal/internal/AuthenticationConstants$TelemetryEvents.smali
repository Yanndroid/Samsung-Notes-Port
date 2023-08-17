.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$TelemetryEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TelemetryEvents"
.end annotation


# static fields
.field public static final DECRYPTION_ERROR:Ljava/lang/String; = "decryption_error_v2"

.field public static final KEYSTORE_READ_END:Ljava/lang/String; = "keychain_read_v2_end"

.field public static final KEYSTORE_READ_START:Ljava/lang/String; = "keychain_read_v2_start"

.field public static final KEYSTORE_WRITE_END:Ljava/lang/String; = "keychain_write_v2_end"

.field public static final KEYSTORE_WRITE_START:Ljava/lang/String; = "keychain_write_v2_start"

.field public static final KEY_CREATED:Ljava/lang/String; = "key_created_v2"

.field public static final KEY_DISTRIBUTION_END:Ljava/lang/String; = "key_distribution_v2_end"

.field public static final KEY_DISTRIBUTION_START:Ljava/lang/String; = "key_distribution_v2_start"

.field public static final KEY_RETRIEVAL_END:Ljava/lang/String; = "key_retrieval_v2_end"

.field public static final KEY_RETRIEVAL_START:Ljava/lang/String; = "key_retrieval_v2_start"

.field public static final SHARED_DEVICE_REGISTERED:Ljava/lang/String; = "shared_device_registered"

.field public static final USER_SIGNED_INTO_SHARED_DEVICE:Ljava/lang/String; = "user_signed_into_shared_device"

.field public static final USER_SIGNED_OUT_FROM_SHARED_DEVICE:Ljava/lang/String; = "user_signed_out_from_shared_device"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
