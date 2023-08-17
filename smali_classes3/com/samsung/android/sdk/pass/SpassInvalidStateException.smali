.class public Lcom/samsung/android/sdk/pass/SpassInvalidStateException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# static fields
.field public static final STATUS_OPERATION_DENIED:I = 0x1


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;->a:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;->a:I

    return v0
.end method
