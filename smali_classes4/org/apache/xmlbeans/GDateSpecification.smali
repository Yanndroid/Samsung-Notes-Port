.class public interface abstract Lorg/apache/xmlbeans/GDateSpecification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HAS_DAY:I = 0x8

.field public static final HAS_MONTH:I = 0x4

.field public static final HAS_TIME:I = 0x10

.field public static final HAS_TIMEZONE:I = 0x1

.field public static final HAS_YEAR:I = 0x2


# virtual methods
.method public abstract canonicalString()Ljava/lang/String;
.end method

.method public abstract compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I
.end method

.method public abstract getBuiltinTypeCode()I
.end method

.method public abstract getCalendar()Lorg/apache/xmlbeans/XmlCalendar;
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getDay()I
.end method

.method public abstract getFlags()I
.end method

.method public abstract getFraction()Ljava/math/BigDecimal;
.end method

.method public abstract getHour()I
.end method

.method public abstract getJulianDate()I
.end method

.method public abstract getMillisecond()I
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getTimeZoneHour()I
.end method

.method public abstract getTimeZoneMinute()I
.end method

.method public abstract getTimeZoneSign()I
.end method

.method public abstract getYear()I
.end method

.method public abstract hasDate()Z
.end method

.method public abstract hasDay()Z
.end method

.method public abstract hasMonth()Z
.end method

.method public abstract hasTime()Z
.end method

.method public abstract hasTimeZone()Z
.end method

.method public abstract hasYear()Z
.end method

.method public abstract isImmutable()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
