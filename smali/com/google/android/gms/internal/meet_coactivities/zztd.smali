.class public final Lcom/google/android/gms/internal/meet_coactivities/zztd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zztd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zztd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/meet_coactivities/zztd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zztd;->zza:Ljava/lang/String;

    return-object v0
.end method
