.class final enum Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

.field public static final enum BLACKFOREST:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

.field public static final enum GALLATIN:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

.field public static final enum ITAR:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

.field public static final enum WORLDWIDE:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;


# instance fields
.field private mCommonEndpoint:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    const-string v1, "WORLDWIDE"

    const/4 v2, 0x0

    const-string v3, "https://login.windows.net/common"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->WORLDWIDE:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    const-string v3, "GALLATIN"

    const/4 v4, 0x1

    const-string v5, "https://login.partner.microsoftonline.cn/common"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->GALLATIN:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    new-instance v3, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    const-string v5, "BLACKFOREST"

    const/4 v6, 0x2

    const-string v7, "https://login.microsoftonline.de/common"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->BLACKFOREST:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    new-instance v5, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    const-string v7, "ITAR"

    const/4 v8, 0x3

    const-string v9, "https://login.microsoftonline.us/common"

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->ITAR:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->mCommonEndpoint:Ljava/lang/String;

    return-void
.end method

.method public static toEnvironment(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":toEnvironment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "login.usgovcloudapi.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "login.chinacloudapi.cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "login.microsoftonline.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "login.windows.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "login.microsoft.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "sts.windows.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "login.microsoftonline.us"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "login.microsoftonline.de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "login.partner.microsoftonline.cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to map provided env to enum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v0, "Unrecognized environment"

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->WORLDWIDE:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->ITAR:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->BLACKFOREST:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->GALLATIN:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x73b89ebd -> :sswitch_8
        -0x50d0d88d -> :sswitch_7
        -0x50d0d670 -> :sswitch_6
        -0x500d0a0a -> :sswitch_5
        -0x2a950d44 -> :sswitch_4
        -0xd83f353 -> :sswitch_3
        0x36b5c4cf -> :sswitch_2
        0x3ce42562 -> :sswitch_1
        0x7bbd51df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;

    return-object v0
.end method


# virtual methods
.method public getCommonEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$Environment;->mCommonEndpoint:Ljava/lang/String;

    return-object v0
.end method
