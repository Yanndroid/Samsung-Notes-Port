.class public Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private phraseScore:D

.field private phraseText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->phraseScore:D

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->phraseText:Ljava/lang/String;

    return-object v0
.end method

.method public setScore(D)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->phraseScore:D

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhrase;->phraseText:Ljava/lang/String;

    return-void
.end method
