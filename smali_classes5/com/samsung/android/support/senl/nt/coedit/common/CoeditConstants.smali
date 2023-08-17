.class public Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$SnapResult;,
        Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;
    }
.end annotation


# static fields
.field public static final COEDIT_CHECK_OBJECT_DURATION:I = 0x2710

.field public static final COEDIT_MAX_OBJECT:I = 0xa410

.field public static final COEDIT_MIN_OBJECT:I = 0xa21c

.field public static final GRPC_CORE_SERVER_PORT:Ljava/lang/String; = "443"

.field public static final GRPC_OT_SERVER_PORT:Ljava/lang/String; = "443"

.field public static final INITIAL_BODY_TEXT:Ljava/lang/String; = "\n"

.field public static final INITIAL_BODY_TEXT_FEATURE:Z = false

.field public static IS_STG_SERVER:Z = false

.field public static IS_VALIDATION:Z = false

.field public static final MAX_RELEASE_SECOND:I = 0x5

.field public static final NETWORK_CHECK_DURATION:I = 0x3e8

.field public static final NUM_OF_COEDIT_THREAD_POOL_SIZE:I = 0xa

.field public static final NUM_OF_SNAP_THREAD_POOL_SIZE:I = 0x5

.field public static final PAGE_WIDTH:I = 0x870

.field public static final PROD_SERVER_HOST:Ljava/lang/String; = "an2a-coedit.samsungcloud.com"

.field public static final SERVER_HOST:Ljava/lang/String;

.field public static final STG_SERVER:Ljava/lang/String; = "STG_SERVER"

.field public static final STG_SERVER_HOST:Ljava/lang/String; = "stg-an2a-coedit.samsungcloud.com"

.field public static final VALIDATION:Ljava/lang/String; = "VALIDATION"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Pref_Coedit"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "STG_SERVER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "VALIDATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    if-eqz v0, :cond_0

    const-string v0, "stg-an2a-coedit.samsungcloud.com"

    goto :goto_0

    :cond_0
    const-string v0, "an2a-coedit.samsungcloud.com"

    :goto_0
    sput-object v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->SERVER_HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toogleStgServer()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    const-string v0, "Pref_Coedit"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    const-string v2, "STG_SERVER"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static toogleValidation()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    const-string v0, "Pref_Coedit"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    const-string v2, "VALIDATION"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
