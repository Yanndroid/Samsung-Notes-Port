.class public final enum LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/UploadStrokeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LcoeditObjectMessage/UploadStrokeRequest$RequestCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

.field public static final enum BINARY:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

.field public static final enum BINARY_INFO:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

.field public static final enum REQUEST_NOT_SET:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    const-string v1, "BINARY_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->BINARY_INFO:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    new-instance v1, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    const-string v4, "BINARY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->BINARY:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    new-instance v4, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    const-string v6, "REQUEST_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->REQUEST_NOT_SET:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    const/4 v6, 0x3

    new-array v6, v6, [LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->$VALUES:[LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->value:I

    return-void
.end method

.method public static forNumber(I)LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->BINARY:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-object p0

    :cond_1
    sget-object p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->BINARY_INFO:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-object p0

    :cond_2
    sget-object p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->REQUEST_NOT_SET:LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-object p0
.end method

.method public static valueOf(I)LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->forNumber(I)LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
    .locals 1

    const-class v0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-object p0
.end method

.method public static values()[LcoeditObjectMessage/UploadStrokeRequest$RequestCase;
    .locals 1

    sget-object v0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->$VALUES:[LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    invoke-virtual {v0}, [LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcoeditObjectMessage/UploadStrokeRequest$RequestCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, LcoeditObjectMessage/UploadStrokeRequest$RequestCase;->value:I

    return v0
.end method
