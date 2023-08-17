.class public final enum LnoteSnapMessage/DownloadResponse$RequestCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/DownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LnoteSnapMessage/DownloadResponse$RequestCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LnoteSnapMessage/DownloadResponse$RequestCase;

.field public static final enum BINARY:LnoteSnapMessage/DownloadResponse$RequestCase;

.field public static final enum BINARY_INFO:LnoteSnapMessage/DownloadResponse$RequestCase;

.field public static final enum REQUEST_NOT_SET:LnoteSnapMessage/DownloadResponse$RequestCase;

.field public static final enum RESPONSE_RESULT:LnoteSnapMessage/DownloadResponse$RequestCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, LnoteSnapMessage/DownloadResponse$RequestCase;

    const-string v1, "BINARY_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LnoteSnapMessage/DownloadResponse$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnoteSnapMessage/DownloadResponse$RequestCase;->BINARY_INFO:LnoteSnapMessage/DownloadResponse$RequestCase;

    new-instance v1, LnoteSnapMessage/DownloadResponse$RequestCase;

    const-string v4, "BINARY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, LnoteSnapMessage/DownloadResponse$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, LnoteSnapMessage/DownloadResponse$RequestCase;->BINARY:LnoteSnapMessage/DownloadResponse$RequestCase;

    new-instance v4, LnoteSnapMessage/DownloadResponse$RequestCase;

    const-string v6, "RESPONSE_RESULT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, LnoteSnapMessage/DownloadResponse$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, LnoteSnapMessage/DownloadResponse$RequestCase;->RESPONSE_RESULT:LnoteSnapMessage/DownloadResponse$RequestCase;

    new-instance v6, LnoteSnapMessage/DownloadResponse$RequestCase;

    const-string v8, "REQUEST_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, LnoteSnapMessage/DownloadResponse$RequestCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, LnoteSnapMessage/DownloadResponse$RequestCase;->REQUEST_NOT_SET:LnoteSnapMessage/DownloadResponse$RequestCase;

    const/4 v8, 0x4

    new-array v8, v8, [LnoteSnapMessage/DownloadResponse$RequestCase;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, LnoteSnapMessage/DownloadResponse$RequestCase;->$VALUES:[LnoteSnapMessage/DownloadResponse$RequestCase;

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

    iput p3, p0, LnoteSnapMessage/DownloadResponse$RequestCase;->value:I

    return-void
.end method

.method public static forNumber(I)LnoteSnapMessage/DownloadResponse$RequestCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, LnoteSnapMessage/DownloadResponse$RequestCase;->RESPONSE_RESULT:LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object p0

    :cond_1
    sget-object p0, LnoteSnapMessage/DownloadResponse$RequestCase;->BINARY:LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object p0

    :cond_2
    sget-object p0, LnoteSnapMessage/DownloadResponse$RequestCase;->BINARY_INFO:LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object p0

    :cond_3
    sget-object p0, LnoteSnapMessage/DownloadResponse$RequestCase;->REQUEST_NOT_SET:LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object p0
.end method

.method public static valueOf(I)LnoteSnapMessage/DownloadResponse$RequestCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LnoteSnapMessage/DownloadResponse$RequestCase;->forNumber(I)LnoteSnapMessage/DownloadResponse$RequestCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LnoteSnapMessage/DownloadResponse$RequestCase;
    .locals 1

    const-class v0, LnoteSnapMessage/DownloadResponse$RequestCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object p0
.end method

.method public static values()[LnoteSnapMessage/DownloadResponse$RequestCase;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadResponse$RequestCase;->$VALUES:[LnoteSnapMessage/DownloadResponse$RequestCase;

    invoke-virtual {v0}, [LnoteSnapMessage/DownloadResponse$RequestCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnoteSnapMessage/DownloadResponse$RequestCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, LnoteSnapMessage/DownloadResponse$RequestCase;->value:I

    return v0
.end method
