.class public Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;
    }
.end annotation


# instance fields
.field private final transient mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters$OAuth2StrategyParametersBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getPlatformComponents()Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2StrategyParameters;->mPlatformComponents:Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;

    return-object v0
.end method
