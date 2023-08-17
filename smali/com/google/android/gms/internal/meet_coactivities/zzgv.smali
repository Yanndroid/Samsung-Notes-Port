.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzgv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzgv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzgv;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method
