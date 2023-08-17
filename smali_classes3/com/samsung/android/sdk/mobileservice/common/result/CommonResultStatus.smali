.class public Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAgentCode:Ljava/lang/String;

.field private mCode:I

.field private mDisplayMessage:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mCode:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mAgentCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mCode:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mAgentCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mDisplayMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgentCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mAgentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mCode:I

    return v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mDisplayMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->mMessage:Ljava/lang/String;

    return-object v0
.end method
