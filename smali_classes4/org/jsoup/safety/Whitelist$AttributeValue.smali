.class Lorg/jsoup/safety/Whitelist$AttributeValue;
.super Lorg/jsoup/safety/Whitelist$TypedValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Whitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeValue"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/safety/Whitelist$TypedValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeValue;
    .locals 1

    new-instance v0, Lorg/jsoup/safety/Whitelist$AttributeValue;

    invoke-direct {v0, p0}, Lorg/jsoup/safety/Whitelist$AttributeValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
