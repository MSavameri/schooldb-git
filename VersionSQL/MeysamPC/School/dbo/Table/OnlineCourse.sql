/****** Object:  Table [dbo].[OnlineCourse]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE TABLE [dbo].[OnlineCourse](
	[CourseID] [int] NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_OnlineCourse] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[OnlineCourse]  WITH CHECK ADD  CONSTRAINT [FK_OnlineCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
ALTER TABLE [dbo].[OnlineCourse] CHECK CONSTRAINT [FK_OnlineCourse_Course]
