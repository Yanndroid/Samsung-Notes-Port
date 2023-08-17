.class public final Lcom/google/android/gms/drive/Drive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/Drive$zza;,
        Lcom/google/android/gms/drive/Drive$zzb;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            ">;"
        }
    .end annotation
.end field

.field public static final DriveApi:Lcom/google/android/gms/drive/DriveApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

.field private static final zzq:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzr:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzs:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/drive/zzaw;",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzt:Lcom/google/android/gms/common/api/Scope;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static final zzu:Lcom/google/android/gms/common/api/Scope;

.field private static final zzv:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/drive/Drive$zzb;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzw:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/drive/Drive$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzx:Lcom/google/android/gms/drive/zzj;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzy:Lcom/google/android/gms/drive/zzl;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    new-instance v1, Lcom/google/android/gms/drive/zze;

    invoke-direct {v1}, Lcom/google/android/gms/drive/zze;-><init>()V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->zzq:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v2, Lcom/google/android/gms/drive/zzf;

    invoke-direct {v2}, Lcom/google/android/gms/drive/zzf;-><init>()V

    sput-object v2, Lcom/google/android/gms/drive/Drive;->zzr:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v3, Lcom/google/android/gms/drive/zzg;

    invoke-direct {v3}, Lcom/google/android/gms/drive/zzg;-><init>()V

    sput-object v3, Lcom/google/android/gms/drive/Drive;->zzs:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->zzt:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/drive.apps"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->zzu:Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Api;

    const-string v5, "Drive.API"

    invoke-direct {v4, v5, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v4, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v4, "Drive.INTERNAL_API"

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->zzv:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/Api;

    const-string v2, "Drive.API_CONNECTIONLESS"

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/drive/Drive;->zzw:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzx:Lcom/google/android/gms/drive/zzj;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzeb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->zzy:Lcom/google/android/gms/drive/zzl;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Drive;->DrivePreferencesApi:Lcom/google/android/gms/drive/DrivePreferencesApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDriveClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveClient;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbb;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzbb;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveClient;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzbb;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzbb;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveResourceClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveResourceClient;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzch;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzch;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method public static getDriveResourceClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/drive/DriveResourceClient;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/drive/Drive;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzch;

    new-instance v1, Lcom/google/android/gms/drive/Drive$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/drive/Drive$zza;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzch;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzt:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzu:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "You must request a Drive scope in order to interact with the Drive API."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method
