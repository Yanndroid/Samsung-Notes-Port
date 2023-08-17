.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzhb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzhb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhb;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "S11Y_SESSION_DETECTION_RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
