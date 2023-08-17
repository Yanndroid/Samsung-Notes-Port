.class public Lcz/msebera/android/httpclient/MessageConstraintException;
.super Ljava/nio/charset/CharacterCodingException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x545694392b779bb7L


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/MessageConstraintException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/MessageConstraintException;->message:Ljava/lang/String;

    return-object v0
.end method
