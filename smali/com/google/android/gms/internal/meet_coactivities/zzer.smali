.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzer;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzer;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzer;

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

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzon;

    sget v0, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzon;->zzr()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzK([B)[Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
