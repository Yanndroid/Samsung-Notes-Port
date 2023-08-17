.class interface abstract Lcom/samsung/android/sdk/scs/ai/asr/Repository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;
    }
.end annotation


# static fields
.field public static final settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;

    const-string v1, "scs_asr_settings"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/Repository$1;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    return-void
.end method


# virtual methods
.method public abstract getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;)Z
.end method
