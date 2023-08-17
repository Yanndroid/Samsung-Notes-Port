.class public Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private queryString:Ljava/lang/String;

.field private tagType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;->queryString:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;->tagType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;->tagType:Ljava/lang/String;

    return-object v0
.end method
