.class public final enum Lcom/samsung/vsf/recognition/RecognizerConstants$Client;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/RecognizerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vsf/recognition/RecognizerConstants$Client;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum GEAR:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum HALO:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum OTHER:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum SIP:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum SIP_IME:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum UNKNOWN:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

.field public static final enum VOICE_MEMO:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->UNKNOWN:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v1, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v3, "VOICE_MEMO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->VOICE_MEMO:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v3, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v5, "GEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->GEAR:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v5, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v7, "SIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->SIP:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v7, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v9, "HALO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->HALO:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v9, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v11, "OTHER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->OTHER:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    new-instance v11, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const-string v13, "SIP_IME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->SIP_IME:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->$VALUES:[Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/vsf/recognition/RecognizerConstants$Client;
    .locals 1

    const-class v0, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    return-object p0
.end method

.method public static values()[Lcom/samsung/vsf/recognition/RecognizerConstants$Client;
    .locals 1

    sget-object v0, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->$VALUES:[Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    invoke-virtual {v0}, [Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    return-object v0
.end method
