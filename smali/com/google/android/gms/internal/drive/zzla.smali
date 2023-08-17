.class abstract Lcom/google/android/gms/internal/drive/zzla;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zztm:Lcom/google/android/gms/internal/drive/zzla;

.field private static final zztn:Lcom/google/android/gms/internal/drive/zzla;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/drive/zzlc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzlc;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzla;->zztm:Lcom/google/android/gms/internal/drive/zzla;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzld;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzld;-><init>(Lcom/google/android/gms/internal/drive/zzlb;)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzla;->zztn:Lcom/google/android/gms/internal/drive/zzla;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzlb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzla;-><init>()V

    return-void
.end method

.method public static zzdt()Lcom/google/android/gms/internal/drive/zzla;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/drive/zzla;->zztm:Lcom/google/android/gms/internal/drive/zzla;

    return-object v0
.end method

.method public static zzdu()Lcom/google/android/gms/internal/drive/zzla;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/drive/zzla;->zztn:Lcom/google/android/gms/internal/drive/zzla;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
