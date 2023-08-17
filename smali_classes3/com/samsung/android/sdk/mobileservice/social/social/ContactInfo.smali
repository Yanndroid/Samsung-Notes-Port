.class public Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hash:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private final rawContactId:J

.field private final result:I


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->result:I

    iput-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->rawContactId:J

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->phoneNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->rawContactId:J

    return-wide v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ContactInfo;->result:I

    return v0
.end method
