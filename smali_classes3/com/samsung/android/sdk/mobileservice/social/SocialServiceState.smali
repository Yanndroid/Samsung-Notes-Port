.class public Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVICE_END:I = 0x5

.field public static final SERVICE_NORMAL:I = 0x1

.field public static final SERVICE_NOTICE:I = 0x2

.field public static final SERVICE_PAUSE:I = 0x4

.field public static final SERVICE_REAGREE:I = 0x3


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mState:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mIntent:Landroid/content/Intent;

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mState:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mState:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialServiceState;->mState:I

    return v0
.end method
