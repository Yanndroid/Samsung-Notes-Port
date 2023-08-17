.class public Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_ETC:I = 0x4

.field public static final ERROR_SERVER_MAINTENANCE:I = 0x3

.field public static final ERROR_SERVER_UPDATE_APP_VERSION:I = 0x2

.field public static final ERROR_SERVER_UPDATE_XML_VERSION:I = 0x1


# instance fields
.field private mErrorCode:I

.field private mIsError:Z

.field private mJwt:Ljava/lang/String;

.field private mOwnerRegionDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mIsError:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mIsError:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mJwt:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mOwnerRegionDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mErrorCode:I

    return v0
.end method

.method public getJwt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mJwt:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerRegionDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mOwnerRegionDomain:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/GetJwtItem;->mIsError:Z

    return v0
.end method
